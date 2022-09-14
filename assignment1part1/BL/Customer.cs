using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace assignment1part1.Models
{
    public class Customer
    { //BL files is used to pass data between User Layer and Data Access Layer
        public string FullName { get; set; }
        public string EmailAddress { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Unit { get; set; }
        public string Zip { get; set; } 
        public string ShippingAddress { get; set; }
        public string ShippingUnit { get; set; }
        public string ShippingZip { get; set; }
        public string CardNumber { get; set; }
        public string NameOnCard { get; set; }
        public string ExpiryDate { get; set; }
        public string CVC { get; set; }
    }
}