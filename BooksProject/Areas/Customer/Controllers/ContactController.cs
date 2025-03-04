using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using Microsoft.AspNetCore.Mvc;

namespace BooksProject.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class ContactController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        public ContactController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public IActionResult Index()
        {
            var ContacTList = _unitOfWork.Contact.GetAll();
            return View(ContacTList);
        }
        public IActionResult TheContact(int? id)
        {
            Contact contact = new Contact();
            if(id == null) return View(contact);
            contact = _unitOfWork.Contact.Get(id.GetValueOrDefault());
            if(contact == null) return NotFound();
            return View(contact);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult TheContact(Contact contact)
        {
            if (contact == null) return NotFound();
            if(!ModelState.IsValid) return View(contact);
            if(contact.Id == 0)
                _unitOfWork.Contact.Add(contact);
            else
                _unitOfWork.Contact.Update(contact);
            _unitOfWork.Save();
            return RedirectToAction("TheContact");
        }
    }
}
