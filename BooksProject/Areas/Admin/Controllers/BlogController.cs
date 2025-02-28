using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using BooksProject.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace BooksProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class BlogController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public BlogController(IUnitOfWork unitOfWork, IWebHostEnvironment webHostEnvironment)
        {
            _unitOfWork = unitOfWork;
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Blogs()
        {
            var blogList = _unitOfWork.Blog.GetAll();
            return View(blogList);
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
            var blogList = _unitOfWork.Blog.GetAll();
            return Json(new { data = blogList });
        }
        public IActionResult Delete(int id)
        {
            var bloginDB = _unitOfWork.Blog.Get(id);
            if (bloginDB == null)
                return Json(new { success = false, message = "Something went wrong !!!" });
            //Image Delete
            var webRootPath = _webHostEnvironment.WebRootPath;
            var imagePath = Path.Combine(webRootPath, bloginDB.BlogImage.Trim('\\'));
            if (System.IO.File.Exists(imagePath))
            {
                System.IO.File.Delete(imagePath);
            }
            _unitOfWork.Blog.Remove(bloginDB);
            _unitOfWork.Save();
            return Json(new { success = true, message = "Data Delete Successfully !!!" });
        }
        #endregion
        public IActionResult Upsert(int? id)
        {
            Blog theBlog = new Blog();
            if (id == null) return View(theBlog);
            theBlog = _unitOfWork.Blog.Get(id.GetValueOrDefault());
            if (theBlog == null) return NotFound();
            return View(theBlog);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Upsert(Blog bllog)
        {
            if (ModelState.IsValid)
            {
                var webRootPath = _webHostEnvironment.WebRootPath;
                var files = HttpContext.Request.Form.Files;
                if (files.Count() > 0)
                {
                    var fileName = Guid.NewGuid().ToString();
                    var extension = Path.GetExtension(files[0].FileName);
                    var uploads = Path.Combine(webRootPath, @"Images\Blogss");
                    if (bllog.Id != 0)
                    {
                        var imageExists = _unitOfWork.Author.Get(bllog.Id).AuthorImage;
                        bllog.BlogImage = imageExists;
                    }
                    if (bllog.BlogImage != null)
                    {
                        var imagePath = Path.Combine(webRootPath, bllog.BlogImage.Trim('\\'));
                        if (System.IO.File.Exists(imagePath))
                        {
                            System.IO.File.Delete(imagePath);
                        }
                    }
                    using (var fileStream = new FileStream(Path.Combine(uploads, fileName + extension), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    bllog.BlogImage = @"\Images\Blogss\" + fileName + extension;
                }
                else
                {
                    if (bllog.Id != 0)
                    {
                        var imagePath = _unitOfWork.Blog.Get(bllog.Id).BlogImage;
                        bllog.BlogImage = imagePath;
                    }
                }
                if (bllog.Id == 0)
                    _unitOfWork.Blog.Add(bllog);
                else
                    _unitOfWork.Blog.Update(bllog);
                _unitOfWork.Save();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                bllog = new Blog();
                if (bllog.Id != 0)
                {
                    bllog = _unitOfWork.Blog.Get(bllog.Id);
                }
                return View(bllog);
            }

        }
    }
}
