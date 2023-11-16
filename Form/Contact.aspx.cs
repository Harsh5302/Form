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
    public partial class Contact : Page
    {
        string conn = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            
            SqlConnection sqlConnection = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Insert into  [dbo].[usertable] (Username, Password, Email) values(@Username, @Password, @Email)", sqlConnection); 
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            sqlConnection.Open();
            cmd.ExecuteNonQuery(); 
            sqlConnection.Close();
            Response.Redirect("Login.aspx");
        }
    }
}