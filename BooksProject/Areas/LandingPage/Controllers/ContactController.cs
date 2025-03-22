using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BooksProject.Areas.LandingPage.Controllers
{
    [Area("LandingPage")]
    [Route("api/Contact")]
    [ApiController]
    public class ContactController : ControllerBase
    {
        private readonly IUnitOfWork _unitOfWork;
        public ContactController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        [HttpGet]
        public IActionResult GetAllContactDetails()
        {
            return Ok(_unitOfWork.Contact.GetAll());
        }
        /*
        public IActionResult GetContact(int? id)
        {
            if (id == null)
            {
                return BadRequest("Contact ID is required.");
            }

            Contact contact = _unitOfWork.Contact.Get(id.GetValueOrDefault());

            if (contact == null)
            {
                return NotFound();
            }

            return Ok(contact);
        }
        */
        [HttpPost]
        public ActionResult<Contact> CreateOrUpdateContact([FromBody] Contact contact)
        {
            if (contact == null)
            {
                return NotFound();
            }

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (contact.Id == 0)
            {
                _unitOfWork.Contact.Add(contact);
            }

            _unitOfWork.Save();

            // Return the contact object with a 201 Created status for new entries, or a 200 OK for updates
            return contact.Id == 0 ? CreatedAtAction(nameof(CreateOrUpdateContact), new { id = contact.Id }, contact) : Ok(contact);
        }
    }
}
