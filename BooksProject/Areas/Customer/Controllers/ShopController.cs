using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using BooksProject.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace BooksProject.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class ShopController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        public ShopController(IUnitOfWork unitOfWork)
        {
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
            var productList = _unitOfWork.Product.GetAll(includeProperties: "Category,CoverType,Author");
            return View(productList);
        }
        public IActionResult Details(int id)
        {
            var claimsIdentity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
            if (claim != null)
            {
                var count = _unitOfWork.ShoppingCart.GetAll
                    (sc => sc.ApplicationUserId == claim.Value).ToList().Count;
                HttpContext.Session.SetInt32(SD.Ss_CartSessionCount, count);
            }
            //*******
            var productInDB = _unitOfWork.Product.FirstOrDefault(p => p.Id == id, includeProperties: "Category,CoverType,Author");
            if (productInDB == null) return NotFound();
            var shoppingCart = new ShopppingCart()
            {
                Product = productInDB,
                ProductId = id
            };
            return View(shoppingCart);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public IActionResult Details(ShopppingCart shoppingCart)
        {
            shoppingCart.Id = 0;
            if (ModelState.IsValid)
            {
                var claimsIdentity = (ClaimsIdentity)User.Identity;
                var claims = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
                if (claims == null) return NotFound();
                shoppingCart.ApplicationUserId = claims.Value;
                var shoppingCartInDB = _unitOfWork.ShoppingCart.FirstOrDefault
                    (sc => sc.ApplicationUserId == claims.Value && sc.ProductId == shoppingCart.ProductId);


                if (shoppingCartInDB == null)
                    _unitOfWork.ShoppingCart.Add(shoppingCart);
                else
                    shoppingCartInDB.Count += shoppingCart.Count;
                _unitOfWork.Save();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                var productInDB = _unitOfWork.Product.FirstOrDefault(p => p.Id == shoppingCart.ProductId,
                    includeProperties: "Category,CoverType");
                if (productInDB == null) return NotFound();
                shoppingCart = new ShopppingCart()
                {
                    Product = productInDB,
                    ProductId = shoppingCart.ProductId
                };
                return View(shoppingCart);
            }
        }
    }
}
