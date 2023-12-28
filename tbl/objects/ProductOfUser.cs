using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tbl.objects
{
    public class ProductOfUser
    {
        public string id { get; set; }
        public objects.Product Product {get; set;}
        public string Email { get; set; }

        public ProductOfUser()
        {
        }

        public ProductOfUser(string id, Product product, string email)
        {
            this.id = id;
            Product = product;
            Email = email;
        }
    }
}