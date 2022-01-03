using DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.ViewModels
{
    public class VmMenu
    {
        public List<Restaurant> Restaurants { get; set; }
        public List<MenuToRestaurant> MenuToRestaurants { get; set; }
    }
}
