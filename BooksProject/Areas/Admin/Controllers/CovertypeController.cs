using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace BooksProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class CovertypeController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        public CovertypeController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public IActionResult Index()
        {
            return View();
        }

        #region APIs
        [HttpGet]
        public IActionResult GetAll()
        {
            var coverTypeList = _unitOfWork.Covertype.GetAll();
            return Json(new { data = coverTypeList });
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            var coverInDB = _unitOfWork.Covertype.Get(id);
            if (coverInDB == null)
                return Json(new { success = false, message = "Something went wrong !!!" });

            _unitOfWork.Covertype.Remove(coverInDB);
            _unitOfWork.Save();
            return Json(new { success = true, message = "Data Delete Successfully !!!" });
        }
        #endregion

        // GET method for Upsert (Insert or Update).
        public IActionResult Upsert(int? id)
        {
            CoverType coverType = new CoverType();
            if (id == null) return View(coverType);

            coverType = _unitOfWork.Covertype.Get(id.GetValueOrDefault());
            if (coverType == null) return NotFound();
            return View(coverType);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Upsert(CoverType coverType)
        {
            if (coverType == null) return NotFound();
            if (!ModelState.IsValid) return View(coverType);

            if (coverType.Id == 0)
                _unitOfWork.Covertype.Add(coverType);
            else
                _unitOfWork.Covertype.Update(coverType);

            _unitOfWork.Save();
            return RedirectToAction("Index");
        }
    }
}
