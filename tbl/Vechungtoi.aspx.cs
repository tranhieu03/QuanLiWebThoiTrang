using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tbl
{
    public partial class Vechungtoi : System.Web.UI.Page
    {
        List<objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["username"] != null)
            {
                usernamelogout.Style.Add("display", "inline");
                username.InnerText = (string)Session["username"];
                loginregister.Style.Add("display", "none");
            }

            listUser = (List<objects.User>)Application["listUser"];
        }
    }
}