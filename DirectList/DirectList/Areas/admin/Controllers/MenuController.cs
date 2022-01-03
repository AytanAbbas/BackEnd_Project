using DirectList.Data;
using DirectList.Models;
using DirectList.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.Areas.admin.Controllers
{
    [Area("admin")]
    public class MenuController : Controller
    {
        private readonly AppDbContext _context;
        public MenuController(AppDbContext context)
        {
            _context = context;

        }
        public IActionResult Index()
        {
            List<MenuToRestaurant> menuToRestaurant = _context.MenuToRestaurants.Include(mt => mt.Menu).ToList();
            List<Restaurant> restaurants = _context.Restaurants.ToList();

            VmMenu model = new VmMenu()
            {
                Restaurants = restaurants,
                MenuToRestaurants = menuToRestaurant
            };
            return View(model);
           
        }
        public IActionResult Create()
        {
            ViewBag.Menu = _context.Menus.ToList();
            ViewBag.Restaurants = _context.Restaurants.ToList();
            return View();
        }
    }
}
