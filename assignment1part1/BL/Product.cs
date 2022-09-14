using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace assignment1part1.Models
{
    public class Product
    { //BL files is used to pass data between User Layer and Data Access Layer
        public string ProductID { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public decimal UnitPrice { get; set; }
        public string ImageFile { get; set; }
    }
}