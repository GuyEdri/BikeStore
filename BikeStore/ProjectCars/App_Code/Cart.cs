using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectCars
{
    public class Cart
    {
        public List<Item> Items;
        public Cart()
        {
            Items = new List<Item>();
        }
        public void Add2Cart(Item Temp)
        {
            int i = 0;
            for (i = 0; i < Items.Count; i++)
            {
                if (Items[i].Pid == Temp.Pid)
                {
                    Items[i].Amount += Temp.Amount;
                    break;
                }
            }
            if (i == Items.Count)
            {
                Items.Add(Temp);
            }
        }
        public double GetTotal()
        {
            double Total = 0;
            foreach (Item Item in Items)
            {
                Total += Item.PPrice * Item.Amount;
            }
            return Total;
        }
    }
}