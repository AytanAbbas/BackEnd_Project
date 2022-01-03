using DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.ViewModels
{
    public class VmRestaurant : VmLayout
    {
        public List<Restaurant> Restaurants { get; set; }
        public Banner Banner { get; set; }
        public Book Book { get; set; }
    }
}