using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Form
{
    public partial class Login : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("select User_id, Username, Password, Email from [dbo].[usertable] where Username=@Username and Password=@Password", sqlConnection);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            sqlConnection.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.Read())
            {
                Session["User_id"] = reader.GetValue(0).ToString();
                Session["Username"] = reader.GetValue(1).ToString();
                Session["Password"] = reader.GetValue(2).ToString();
                Session["Email"] = reader.GetValue(3).ToString();
                Response.Redirect("About.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }
    }
}