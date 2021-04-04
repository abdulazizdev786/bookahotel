using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BookAHotel
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Request.Cookies.Remove("user");
                Session.RemoveAll();
            }
            catch (Exception)
            {


            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userEmail = this.txtEmail.Text;
            string userPass = this.txtPassword.Text;
            if (userEmail == "admin@gmail.com" && userPass == "admin@123")
            {
                Session["userID"] = "1";
                Session["role"] = "admin";
                Session["userName"] = "Admin";
                Session["isAuth"] = "true";
                Response.Redirect("home.aspx");
            }
            else
            {
                LoginDetails log = ValidateUser(userEmail, userPass);
                if (log.isAuthUser)
                {
                    Session["userID"] = log.UserID;
                    Session["userName"] = log.UserName;
                    Session["isAuth"] = log.isAuthUser;
                    Session["role"] = log.role;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
        private LoginDetails ValidateUser(string userEmail, string userPass)
        {
            LoginDetails obj = new LoginDetails();
            obj.isAuthUser = false;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
                string qr = "select * from tblLogin where Email='" + userEmail + "' and Password='" + userPass + "'";
                SqlDataAdapter sda;
                SqlCommand cmd = new SqlCommand(qr, con);
                sda = new SqlDataAdapter(cmd);
                con.Open();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                    string qr1 = "select * from tblusers where Email='" + userEmail + "' ";
                    SqlDataAdapter sda1;
                    SqlCommand cmd1 = new SqlCommand(qr1, con);
                    sda1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    cmd1.ExecuteNonQuery();

                    obj.isAuthUser = true;
                    obj.UserID = int.Parse(dt1.Rows[0]["UserID"].ToString());
                    obj.UserName = dt1.Rows[0]["FullName"].ToString();
                    obj.role = dt1.Rows[0]["role"].ToString();
                }
            }
            catch (Exception ex)
            {
                obj.isAuthUser = false;
            }
            return obj;
        }
        private struct LoginDetails
        {
            public int UserID { get; set; }
            public string UserName { get; set; }
            public string role { get; set; }
            public bool isAuthUser { get; set; }
        }

       
    }
}