using DirectList.Data;
using DirectList.Models;
using DirectList.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.Controllers
{
    public class ListingController : Controller
    {
        private readonly AppDbContext _context;

        public ListingController (AppDbContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
           
            Banner banner = await _context.Banners.FirstOrDefaultAsync(b => b.Page.ToLower() == "listings");
            Setting setting = await _context.Settings.FirstOrDefaultAsync();
            List<Social> socials = await _context.Socials.ToListAsync();
            List<Restaurant> restaurants = await _context.Restaurants
                                                            .Include(i => i.RestaurantImages)
                                                            .Include(tr => tr.TagToRestaurants).ThenInclude(t => t.Tag)
                                                            .Include(fr => fr.FeatureToRestaurants).ThenInclude(f => f.Feature)
                                                            .Include(mr => mr.MenuToRestaurants).ThenInclude(m => m.Menu).ToListAsync();
            VmRestaurant model = new VmRestaurant()
            {
                Restaurants = restaurants,
                Socials = socials,
                Setting = setting,
                Banner = banner
            };

            return View(model);
        }
        public IActionResult Details()
        {
            return View();
        }
    }
}
