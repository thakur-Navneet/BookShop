using BooksProject.DataAccess.Repository.IRepository;
using BooksProject.Models;
using BooksProject.Models.ViewModels;
using BooksProject.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Data;

namespace BooksProject.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ProductController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public ProductController(IUnitOfWork unitOfWork, IWebHostEnvironment webHostEnvironment)
        {
            _unitOfWork = unitOfWork;
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult AllDetails()
        {
            var productList = _unitOfWork.Product.GetAll(includeProperties: "Category,CoverType,Author");
            return View(productList);
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
            var ProductList = _unitOfWork.Product.GetAll();
            return Json(new { data = ProductList });
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            var productinDB = _unitOfWork.Product.Get(id);
            if (productinDB == null)
            {
                return Json(new { success = false, message = "Unable to delete data!" });
            }

            // Get the web root path
            var webRootPath = _webHostEnvironment.WebRootPath;

            // Image Delete Logic
            // Check and delete ImageFeatured if it exists
            if (!string.IsNullOrEmpty(productinDB.ImageFeatured))
            {
                var imagePath1 = Path.Combine(webRootPath, productinDB.ImageFeatured.Trim('\\'));
                if (System.IO.File.Exists(imagePath1))
                {
                    System.IO.File.Delete(imagePath1);
                }
            }

            // Check and delete ImageFirst if it exists
            if (!string.IsNullOrEmpty(productinDB.ImageFirst))
            {
                var imagePath2 = Path.Combine(webRootPath, productinDB.ImageFirst.Trim('\\'));
                if (System.IO.File.Exists(imagePath2))
                {
                    System.IO.File.Delete(imagePath2);
                }
            }

            // Check and delete ImageSecond if it exists
            if (!string.IsNullOrEmpty(productinDB.ImageSecond))
            {
                var imagePath3 = Path.Combine(webRootPath, productinDB.ImageSecond.Trim('\\'));
                if (System.IO.File.Exists(imagePath3))
                {
                    System.IO.File.Delete(imagePath3);
                }
            }

            // Remove the product from the database
            _unitOfWork.Product.Remove(productinDB);
            _unitOfWork.Save();

            return Json(new { success = true, message = "Data deleted successfully!" });
        }
        #endregion
        public IActionResult Upsert(int? id)
        {
            ProductVM productVM = new ProductVM()
            {
                Product = new Product(),
                CategoryList = _unitOfWork.Category.GetAll().Select(cl => new SelectListItem()
                {
                    Text = cl.Name,
                    Value = cl.Id.ToString()
                }),
                CoverTypeList = _unitOfWork.Covertype.GetAll().Select(cl => new SelectListItem()
                {
                    Text = cl.Name,
                    Value = cl.Id.ToString()
                }),
                AuthorList = _unitOfWork.Author.GetAll().Select(cl => new SelectListItem()
                {
                    Text = cl.Title,
                    Value = cl.Id.ToString()
                })

            };
            if (id == null) return View(productVM);
            productVM.Product = _unitOfWork.Product.Get(id.GetValueOrDefault());
            if (productVM.Product == null) return NotFound();
            return View(productVM);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Upsert(ProductVM productVM)
        {
            if (ModelState.IsValid)
            {
                var webRootPath = _webHostEnvironment.WebRootPath;
                var files = HttpContext.Request.Form.Files;
                var uploadsFolder = Path.Combine(webRootPath, @"Images\Productss");

                if (!Directory.Exists(uploadsFolder))
                {
                    Directory.CreateDirectory(uploadsFolder);
                }

                // Check if images are uploaded
                if (files.Count() > 0)
                {
                    // Use GUID for unique filenames
                    var fileName = Guid.NewGuid().ToString();

                    // Process the uploaded files
                    for (int i = 0; i < files.Count(); i++)
                    {
                        var extension = Path.GetExtension(files[i].FileName);
                        var filePath = Path.Combine(uploadsFolder, fileName + "_" + i + extension);

                        // Delete existing files if updating a product
                        if (productVM.Product.Id != 0)
                        {
                            string existingImagePath = null;
                            switch (i)
                            {
                                case 0:
                                    existingImagePath = _unitOfWork.Product.Get(productVM.Product.Id).ImageFeatured;
                                    break;
                                case 1:
                                    existingImagePath = _unitOfWork.Product.Get(productVM.Product.Id).ImageFirst;
                                    break;
                                case 2:
                                    existingImagePath = _unitOfWork.Product.Get(productVM.Product.Id).ImageSecond;
                                    break;
                            }

                            if (!string.IsNullOrEmpty(existingImagePath))
                            {
                                var imagePath = Path.Combine(webRootPath, existingImagePath.TrimStart('\\'));
                                if (System.IO.File.Exists(imagePath))
                                {
                                    System.IO.File.Delete(imagePath);
                                }
                            }
                        }

                        // Save the file
                        using (var fileStream = new FileStream(filePath, FileMode.Create))
                        {
                            files[i].CopyTo(fileStream);
                        }

                        // Assign the correct image path
                        var relativePath = @"\Images\Productss\" + fileName + "_" + i + extension;

                        switch (i)
                        {
                            case 0:
                                productVM.Product.ImageFeatured = relativePath;
                                break;
                            case 1:
                                productVM.Product.ImageFirst = relativePath;
                                break;
                            case 2:
                                productVM.Product.ImageSecond = relativePath;
                                break;
                        }
                    }
                }
                else
                {
                    // Keep existing images if no new images are uploaded
                    if (productVM.Product.Id != 0)
                    {
                        productVM.Product.ImageFeatured = _unitOfWork.Product.Get(productVM.Product.Id).ImageFeatured;
                        productVM.Product.ImageFirst = _unitOfWork.Product.Get(productVM.Product.Id).ImageFirst;
                        productVM.Product.ImageSecond = _unitOfWork.Product.Get(productVM.Product.Id).ImageSecond;
                    }
                }

                // Add or update the product in the database
                if (productVM.Product.Id == 0)
                    _unitOfWork.Product.Add(productVM.Product);
                else
                    _unitOfWork.Product.Update(productVM.Product);

                _unitOfWork.Save();

                return RedirectToAction(nameof(Index));
            }
            else
            {
                // If model is not valid, return view with product and category details
                productVM = new ProductVM()
                {
                    Product = new Product(),
                    CategoryList = _unitOfWork.Category.GetAll().Select(cl => new SelectListItem()
                    {
                        Text = cl.Name,
                        Value = cl.Id.ToString()
                    }),
                    CoverTypeList = _unitOfWork.Covertype.GetAll().Select(cl => new SelectListItem()
                    {
                        Text = cl.Name,
                        Value = cl.Id.ToString()
                    }),
                    AuthorList = _unitOfWork.Author.GetAll().Select(cl => new SelectListItem()
                    {
                        Text = cl.Title,
                        Value = cl.Id.ToString()
                    })
                };

                if (productVM.Product.Id != 0)
                {
                    productVM.Product = _unitOfWork.Product.Get(productVM.Product.Id);
                }

                return View(productVM);
            }
        }
    }
}
