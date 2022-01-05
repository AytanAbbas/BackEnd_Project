using DirectList.Data;
using DirectList.Models;
using DirectList.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.Controllers
{
    public class BlogListController : Controller
    {
        private readonly AppDbContext _context;

        public BlogListController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            VmBlog model = new();
            model.Blogs = _context.Blogs.ToList();
            model.Banner = _context.Banners.FirstOrDefault(b => b.Page == "blog Listing");
            model.Setting = _context.Settings.FirstOrDefault();
            model.Socials = _context.Socials.ToList();
            return View(model);
        }
        public IActionResult BlogDetail(int? id)
        {
            Blog blog = null;
            List<Blog> blogs = _context.Blogs.Include(u => u.CustomUser).ToList();
            Setting setting = _context.Settings.FirstOrDefault();
            List<Social> socials = _context.Socials.ToList();
            Banner banner = _context.Banners.FirstOrDefault(b => b.Page == "blog detail");
            List<BlogComment> blogComments = _context.BlogComments.OrderByDescending(bc => bc.CreatedDate).Where(i => i.BlogId == id).ToList();
            if (id != null)
            {
                blog = _context.Blogs.Find(id);
            }

            VmBlog vmBlog = new VmBlog()
            {
                Blog = blog,
                Blogs=blogs,
                Socials = socials,
                Setting = setting,
                BlogComments = blogComments,
                Banner = banner
            };
            return View(vmBlog);
        }
        public IActionResult Comment()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Comment(BlogComment model)
        {
            if (ModelState.IsValid)
            {
                _context.BlogComments.Add(model);
                _context.SaveChanges();
                return RedirectToAction("Details", new { id = model.BlogId });
            }

            return View(model);
        }

    }
    }

  
   