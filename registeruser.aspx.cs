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
    public partial class registeruser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string Fname = this.txtFname.Text;
            string Lname = this.txtLname.Text; ;
            string nation = this.txtNationality.Text;
            string phone = this.txtPhone.Text;
            string gender = this.genDropdown.Text;
            string email = this.txtEmail.Text;
            string password = this.txtPassword.Text;
            con.Open();
            string qr = "insert into tblUsers values('1','"+Fname+" "+Lname+"','"+nation+"','"+phone+"','User','"+gender+"','"+email+ "') insert into tblLogin values('" + email + "','" + password + "')";
            SqlDataAdapter sda;
            SqlCommand cmd = new SqlCommand(qr,con);
            sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("home.aspx");
        }
    }
}