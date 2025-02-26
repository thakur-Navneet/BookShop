using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using BooksProject.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace BooksProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class AuthorController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public AuthorController(IUnitOfWork unitOfWork, IWebHostEnvironment webHostEnvironment)
        {
            _unitOfWork = unitOfWork;
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult AllDetails()
        {
            var authorList = _unitOfWork.Author.GetAll();
            return View(authorList);
        }
        [Authorize(Roles = SD.Role_Admin + "," + SD.Role_Employee)]
        public IActionResult Index()
        {
            return View();
        }

        #region APIs
        [HttpGet]
        public IActionResult GetAll()
        {
            var authorsList = _unitOfWork.Author.GetAll();
            return Json(new { data = authorsList });
        }
        public IActionResult Delete(int id)
        {
            var AuhtorinDB = _unitOfWork.Author.Get(id);
            if (AuhtorinDB == null)
                return Json(new { success = false, message = "Something went wrong !!!" });
            //Image Delete
            var webRootPath = _webHostEnvironment.WebRootPath;
            var imagePath = Path.Combine(webRootPath, AuhtorinDB.AuthorImage.Trim('\\'));
            if (System.IO.File.Exists(imagePath))
            {
                System.IO.File.Delete(imagePath);
            }
            _unitOfWork.Author.Remove(AuhtorinDB);
            _unitOfWork.Save();
            return Json(new { success = true, message = "Data Delete Successfully !!!" });
        }
        #endregion
        public IActionResult Upsert(int? id)
        {
            Author theauthor = new Author();
            if (id == null) return View(theauthor);
            theauthor = _unitOfWork.Author.Get(id.GetValueOrDefault());
            if (theauthor == null) return NotFound();
            return View(theauthor);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Upsert(Author author)
        {
            if (ModelState.IsValid)
            {
                var webRootPath = _webHostEnvironment.WebRootPath;
                var files = HttpContext.Request.Form.Files;
                if (files.Count() > 0)
                {
                    var fileName = Guid.NewGuid().ToString();
                    var extension = Path.GetExtension(files[0].FileName);
                    var uploads = Path.Combine(webRootPath, @"Images\Authorss");
                    if (author.Id != 0)
                    {
                        var imageExists = _unitOfWork.Author.Get(author.Id).AuthorImage;
                        author.AuthorImage = imageExists;
                    }
                    if (author.AuthorImage != null)
                    {
                        var imagePath = Path.Combine(webRootPath, author.AuthorImage.Trim('\\'));
                        if (System.IO.File.Exists(imagePath))
                        {
                            System.IO.File.Delete(imagePath);
                        }
                    }
                    using (var fileStream = new FileStream(Path.Combine(uploads, fileName + extension), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    author.AuthorImage = @"\Images\Authorss\" + fileName + extension;
                }
                else
                {
                    if (author.Id != 0)
                    {
                        var imagePath = _unitOfWork.Author.Get(author.Id).AuthorImage;
                        author.AuthorImage = imagePath;
                    }
                }
                if (author.Id == 0)
                    _unitOfWork.Author.Add(author);
                else
                    _unitOfWork.Author.Update(author);
                _unitOfWork.Save();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                author = new Author();
                if (author.Id != 0)
                {
                    author = _unitOfWork.Author.Get(author.Id);
                }
                return View(author);
            }

        }
    }
}