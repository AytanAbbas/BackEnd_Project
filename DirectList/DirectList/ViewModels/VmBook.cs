using DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.ViewModels
{
    public class VmBook:VmLayout
    {
        public Restaurant Restaurant { get; set; }
        public Book Book { get; set; }

    }
}
