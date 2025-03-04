using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using BooksProject.Models.ViewModels;
using BooksProject.Utility;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;

namespace BooksProject.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IUnitOfWork _unitOfWork;
        public HomeController(ILogger<HomeController> logger, IUnitOfWork unitOfWork)
        {
            _logger = logger;
            _unitOfWork = unitOfWork;
        }

        public IActionResult Index()
        {
            var claimsIdentity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
            if (claim != null)
            {
                var count = _unitOfWork.ShoppingCart.GetAll
                    (sc => sc.ApplicationUserId == claim.Value).ToList().Count;
                HttpContext.Session.SetInt32(SD.Ss_CartSessionCount, count);
            }
            /*
            var productList = _unitOfWork.Product.GetAll(includeProperties: "Category,CoverType,Author");
            var BlogList = _unitOfWork.Blog.GetAll();            
            //var data = (Products: productList, Blogs: BlogList);
            return View(productList);
            */
            var randomProducts = _unitOfWork.Product
                .GetAll(includeProperties: "Category,CoverType,Author")
                .OrderBy(x => Guid.NewGuid())  // Randomize products
                .Take(3)  // Select 3 random products
                .ToList();
            var randomBlogs = _unitOfWork.Blog
                                .GetAll()
                                .OrderBy(x => Guid.NewGuid())  // Randomize blogs
                                .Take(2)  // Select 2 random blogs
                                .ToList();

            // Create ViewModel instance and pass data
            var viewModel = new HomeViewModel
            {
                Products = randomProducts,
                Blogs = randomBlogs
            };

            return View(viewModel); // Make sure you are returning 'viewModel'


        }


        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult About()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}