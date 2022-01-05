using DirectList.Data;
using DirectList.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.Areas.admin.Controllers
{
    [Area("admin")]
    public class RestaurantController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public RestaurantController(AppDbContext context, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Index()
        {
            List<Restaurant> model = _context.Restaurants.OrderByDescending(o => o.CreatedDate)
                                                                .Include(ri => ri.RestaurantImages)
                                                                .Include(tr => tr.TagToRestaurants).ThenInclude(t => t.Tag)
                                                                .Include(fr => fr.FeatureToRestaurants).ThenInclude(f => f.Feature)
                                                                .Include(mr => mr.MenuToRestaurants).ThenInclude(m => m.Menu)
                                                                .ToList();
            return View(model);
        }
        public IActionResult Create()
        {
            ViewBag.Tags = _context.Tags.ToList();
            ViewBag.Features = _context.Features.ToList();


            return View();
        }
        [HttpPost]
        public IActionResult Create(Restaurant model)
        {
            if (ModelState.IsValid)
            {
                _context.Restaurants.Add(model);
                _context.SaveChanges();

                foreach (var image in model.ImageFiles)
                {
                    if (image.ContentType == "image/jpeg" || image.ContentType == "image/png")
                    {
                        if (image.Length <= 2097152)
                        {


                            string fileName = Guid.NewGuid() + "-" + DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + image.FileName;
                            string filePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", fileName);
                            using (var stream = new FileStream(filePath, FileMode.Create))
                            {
                                image.CopyTo(stream);
                            }

                            RestaurantImage restaurantImage = new RestaurantImage();
                            restaurantImage.Image = fileName;
                            restaurantImage.RestaurantId = model.Id;

                            _context.RestaurantImages.Add(restaurantImage);
                            _context.SaveChanges();




                        }

                        else
                        {
                            ModelState.AddModelError("", "You can upload only less than 2 mb.");
                            return View(model);
                        }
                    }
                    else
                    {
                        ModelState.AddModelError("", "You can upload only .jpeg, .jpg and .png");
                        return View(model);
                    }
                }

                foreach (var item in model.Tags)
                {
                    TagToRestaurant tagToRestaurant = new TagToRestaurant();
                    tagToRestaurant.RestaurantId = model.Id;
                    tagToRestaurant.TagId = item;
                    _context.TagToRestaurants.Add(tagToRestaurant);
                }
                _context.SaveChanges();

                foreach (var item in model.Features)
                {
                    FeatureToRestaurant featureToRestaurant = new FeatureToRestaurant();
                    featureToRestaurant.RestaurantId = model.Id;
                    featureToRestaurant.FeatureId = item;
                    _context.FeatureToRestaurants.Add(featureToRestaurant);
                }
                _context.SaveChanges();


                return RedirectToAction("Index");
            }

            ViewBag.Tags = _context.Tags.ToList();
            ViewBag.Features = _context.Features.ToList();
            return View(model);
        }
        public IActionResult Update(int? id)
        {
            Restaurant model = _context.Restaurants.Include(tr => tr.TagToRestaurants).ThenInclude(t => t.Tag).FirstOrDefault(i => i.Id == id);

            model.Tags = _context.TagToRestaurants.Where(t => t.RestaurantId == id).Select(r => r.TagId).ToList();
            model.Features = _context.FeatureToRestaurants.Where(f => f.RestaurantId == id).Select(r => r.FeatureId).ToList();

            ViewBag.Tags = _context.Tags.ToList();
            ViewBag.Features = _context.Features.ToList();

            return View(model);
        }

        [HttpPost]
        public IActionResult Update(Restaurant model)
        {
            if (ModelState.IsValid)
            {

                if (model.ImageFiles != null)
                {
                    List<RestaurantImage> restaurantImages = _context.RestaurantImages.Where(ri => ri.RestaurantId == model.Id).ToList();
                    foreach (var image in restaurantImages)
                    {
                        string oldPathName = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", image.Image);

                        if (!string.IsNullOrEmpty(oldPathName))
                        {
                            if (System.IO.File.Exists(oldPathName))
                            {
                                System.IO.File.Delete(oldPathName);
                            }
                        }
                        _context.RestaurantImages.Remove(image);
                    }
                    _context.SaveChanges();

                    foreach (var item in model.ImageFiles)
                    {

                        if (item.ContentType == "image/png" || item.ContentType == "image/jpeg")
                        {
                            if (item.Length <= 2097152)
                            {
                                string fileName = Guid.NewGuid() + "-" + DateTime.Now.ToString("yyyyMMddHHmmSS") + "-" + item.FileName;
                                string path = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", fileName);

                                using (var stream = new FileStream(path, FileMode.Create))
                                {
                                    item.CopyTo(stream);
                                }

                                RestaurantImage restaurantImages1 = new RestaurantImage();
                                restaurantImages1.Image = fileName;
                                restaurantImages1.RestaurantId = model.Id;

                                _context.RestaurantImages.Add(restaurantImages1);
                                _context.SaveChanges();

                            }
                        }
                    }



                    List<TagToRestaurant> tagToRestaurants = _context.TagToRestaurants.Where(tr => tr.RestaurantId == model.Id).ToList();

                    foreach (var item in tagToRestaurants)
                    {
                        _context.TagToRestaurants.Remove(item);
                    }
                    _context.SaveChanges();

                    List<FeatureToRestaurant> featuresToRestaurants = _context.FeatureToRestaurants.Where(fr => fr.RestaurantId == model.Id).ToList();

                    foreach (var item in featuresToRestaurants)
                    {
                        _context.FeatureToRestaurants.Remove(item);
                    }
                    _context.SaveChanges();

                    if (model.TagToRestaurantId != null && model.TagToRestaurantId.Count > 0)
                    {
                        foreach (var item in model.TagToRestaurantId)
                        {
                            TagToRestaurant tagToRestaurant = new TagToRestaurant();
                            tagToRestaurant.TagId = item;
                            tagToRestaurant.RestaurantId = model.Id;
                            _context.TagToRestaurants.Add(tagToRestaurant);
                        }
                        _context.SaveChanges();

                    }

                    if (model.FeatureToRestaurantId != null && model.FeatureToRestaurantId.Count > 0)
                    {
                        foreach (var item in model.FeatureToRestaurantId)
                        {
                            FeatureToRestaurant featureToRestaurant = new FeatureToRestaurant();
                            featureToRestaurant.FeatureId = item;
                            featureToRestaurant.RestaurantId = model.Id;
                            _context.FeatureToRestaurants.Add(featureToRestaurant);
                            _context.SaveChanges();
                        }
                    }


                }
                else
                {
                    List<TagToRestaurant> tagToRestaurants = _context.TagToRestaurants.Where(tr => tr.RestaurantId == model.Id).ToList();

                    foreach (var item in tagToRestaurants)
                    {
                        _context.TagToRestaurants.Remove(item);
                    }
                    _context.SaveChanges();

                    if (model.TagToRestaurantId != null && model.TagToRestaurantId.Count > 0)
                    {
                        foreach (var item in model.TagToRestaurantId)
                        {
                            TagToRestaurant tagToRestaurant = new TagToRestaurant();
                            tagToRestaurant.TagId = item;
                            tagToRestaurant.RestaurantId = model.Id;
                            _context.TagToRestaurants.Add(tagToRestaurant);
                        }
                        _context.SaveChanges();

                    }

                    List<FeatureToRestaurant> featuresToRestaurants = _context.FeatureToRestaurants.Where(fr => fr.RestaurantId == model.Id).ToList();

                    foreach (var item in featuresToRestaurants)
                    {
                        _context.FeatureToRestaurants.Remove(item);
                    }
                    _context.SaveChanges();


                    if (model.FeatureToRestaurantId != null && model.FeatureToRestaurantId.Count > 0)
                    {
                        foreach (var item in model.FeatureToRestaurantId)
                        {
                            FeatureToRestaurant featureToRestaurant = new FeatureToRestaurant();
                            featureToRestaurant.FeatureId = item;
                            featureToRestaurant.RestaurantId = model.Id;
                            _context.FeatureToRestaurants.Add(featureToRestaurant);
                            _context.SaveChanges();
                        }
                    }

                }
                _context.Restaurants.Update(model);
                _context.SaveChanges();

                return RedirectToAction("Index");

            }


            return View(model);
        }

        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                ModelState.AddModelError("", "Id can not be null");
                return RedirectToAction("Index");
            }

            Restaurant restaurant = _context.Restaurants.Find(id);
            if (restaurant == null)
            {
                ModelState.AddModelError("", "Data can not be null");
                return RedirectToAction("Index");
            }

            //Delete old image
            List<RestaurantImage> restaurantImages = _context.RestaurantImages.Where(ri => ri.RestaurantId == id).ToList();
            foreach (var item in restaurantImages)
            {
                if (!string.IsNullOrEmpty(item.Image))
                {
                    string oldImagePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", item.Image);
                    if (System.IO.File.Exists(oldImagePath))
                    {
                        System.IO.File.Delete(oldImagePath);
                    }
                }
            }

            _context.Restaurants.Remove(restaurant);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }



    }
    
}
