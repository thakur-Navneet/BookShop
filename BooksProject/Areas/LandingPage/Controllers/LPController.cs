using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BooksProject.Areas.LandingPage.Controllers
{
    [Area("LandingPage")]
    [Route("api/LP")]
    [ApiController]
    public class LPController : ControllerBase
    {
        private readonly IUnitOfWork _unitOfWork;
        public LPController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        /*
        [HttpGet]
        public IActionResult GetAllData()
        {
            //return Ok(_unitOfWork.Product.GetAll());
            // Fetch data from all three tables
            var authors = _unitOfWork.Author.GetAll();
            var products = _unitOfWork.Product.GetAll(includeProperties: "Category,CoverType,Author");
            var blogs = _unitOfWork.Blog.GetAll();
            var contacts = _unitOfWork.Contact.GetAll();

            // Combine the data into a result
            var result = new
            {
                Authors = authors,
                Products = products,
                Blogs = blogs,
                Contacts = contacts
            };
            return Ok(result);  // Return as a JSON response
        }
        */
        [HttpGet("authors")]
        public IActionResult GetAllAuthors()
        {
            return Ok(_unitOfWork.Author.GetAll());
        }

        [HttpGet("products")]
        public IActionResult GetAllProducts()
        {
            return Ok(_unitOfWork.Product.GetAll(includeProperties: "Category,CoverType,Author"));
        }

        [HttpGet("blogs")]
        public IActionResult GetAllBlogs()
        {
            return Ok(_unitOfWork.Blog.GetAll());
        }
        [HttpGet("contacts")]
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
