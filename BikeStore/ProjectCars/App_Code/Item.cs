using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCars
{
    public class Item
    {
        public int Pid { get; set; }
        public string PName { get; set; }
        public double PPrice { get; set; }
        public string PImage { get; set; }
        public int Amount { get; set; }
        public string PDesc { get; set; }
        public int Cid { get; set; }
        public string CName { get; set; }
    }
}