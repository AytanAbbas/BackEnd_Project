using DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.ViewModels
{
    public class VmHome:VmLayout
    {
        public Banner Banner { get; set; }
        public List<Vacation> Vacations { get; set; }
        public List<Blog> Blogs { get; set; }
        public List<Restaurant> Restaurants { get; set; }
    }
}
