using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using BooksProject.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace BooksProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SupportController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        public SupportController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public IActionResult Support()
        {
            var supportss = _unitOfWork.Support.GetAll();
            return View(supportss);
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
            var supportList = _unitOfWork.Support.GetAll();
            return Json(new { data = supportList });
        }
        public IActionResult Delete(int id)
        {
            var supportInDB = _unitOfWork.Support.Get(id);
            if (supportInDB == null)
                return Json(new { success = false, message = "Something went wrong !!!" });
            _unitOfWork.Support.Remove(supportInDB);  
            _unitOfWork.Save(); 
            return Json(new { success = true, message = "Data Delete Successfully !!!" });
        }
        #endregion
        public IActionResult Upsert(int? id)
        {
            Support supporT = new Support(); 
            if (id == null) return View(supporT);

            supporT = _unitOfWork.Support.Get(id.GetValueOrDefault());
            if (supporT == null) return NotFound(); 
            return View(supporT);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]  
        public IActionResult Upsert(Support supportt)
        {
            if (supportt == null) return NotFound();
            if (!ModelState.IsValid) return View(supportt);  
            if (supportt.Id == 0)
                _unitOfWork.Support.Add(supportt);
            else
                _unitOfWork.Support.Update(supportt);

            _unitOfWork.Save(); 
            return RedirectToAction("Index");
        }
    }
}
