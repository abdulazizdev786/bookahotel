using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookAHotel
{
    public partial class mainMaster : System.Web.UI.MasterPage
    {
        public string myrole = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            myrole = "<ul class='navbar-nav'><li class='nav-item'><a class='nav-link active' href='home.aspx'>Home</a></li> <li class='nav-item'><a class='nav-link' href='#'>View All Hotels</a></li><li class='nav-item'><a class='nav-link signin' href='login.aspx'>Login or Register</a></li></ul>";
            if (Session["userID"] == null)
            {
                Session["userName"] = "To Book A Hotel";
                Session["logSession"] = "Login or Register";
            }
            else
            {
                Session["logSession"] = "Logout";
            }

            try
            {
                if (Convert.ToBoolean(Session["isAuth"]))
                {
                    switch (Session["role"].ToString())
                    {
                        case "admin":
                            myrole = "<ul class='navbar-nav'><li class='nav-item'><a class='nav-link active' href='home.aspx'>Home</a></li> <li class='nav-item'><a class='nav-link signin' href='login.aspx'>Logout</a></li></ul>";
                            break;
                        case "user":
                            myrole = "<ul class='navbar-nav'><li class='nav-item'><a class='nav-link active' href='home.aspx'>Home</a></li> <li class='nav-item'><a class='nav-link' href='#'>View All Hotels</a></li><li class='nav-item'><a class='nav-link signin' href='login.aspx'>Login or Register</a></li></ul>";
                            break;
                        case "hotel":
                            myrole = "<ul class='navbar-nav'><li class='nav-item'><a class='nav-link active' href='home.aspx'>Home</a></li><li class='nav-item'><a class='nav-link signin' href='login.aspx'>Login or Register</a></li></ul>";
                            break;
                        default:
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}