﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tbl.objects
{
    public class User
    {
        public string username { get; set; }

        public string email { get; set; }

        public string sdt { get; set; }

        public string password { get; set; }

        public User(string username, string email, string sdt, string password)
        {
            this.username = username;
            this.email = email;
            this.sdt = sdt;
            this.password = password;
        }

        public User()
        {
        }
    }
}