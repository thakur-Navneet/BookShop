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
    }
}
