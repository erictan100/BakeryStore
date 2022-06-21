using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PLET_Bakery
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }



        protected void register_Button_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Data Source=DESKTOP-658T4M8\PLETBAKERY;Initial Catalog=users ;Integrated Security=True";

            cnn = new SqlConnection(connetionString);
            if (name.Text == "" && email.Text == "" && contact.Text == "")
            {
                RegisterNotice2.Visible = true;
                RegisterNotice2.Text = "Register Failed";
                RegisterNotice1.Visible = true;
                RegisterNotice1.Text = "Please Enter all the details";
            }
            else if (password1.Text == "" || password2.Text == "")
            {
                RegisterNotice1.Visible = true;
                RegisterNotice1.Text = "Please Enter you password";
            }
            else if (password1.Text != password2.Text)
            {
                RegisterNotice1.Visible = true;
                RegisterNotice1.Text = "Please Confirm the password is same";
            }
            else if (Register_CheckBox.Checked == false)
            {
                RegisterNotice1.Visible = true;
                RegisterNotice1.Text = "Please Click on the check box before Register";
            }
            else
            {
                RegisterNotice1.Visible = false;
                RegisterNotice2.Visible = false;
                cnn.Open();
                string insertQuery = "insert into register(username, password) values (@username, @password)";
                SqlCommand cmd = new SqlCommand(insertQuery, cnn);
                cmd.Parameters.AddWithValue("@username", email.Text);
                cmd.Parameters.AddWithValue("@password", password1.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Successful'); </script>");
                cnn.Close();
                Response.Redirect("~/LoginPage.aspx");
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string connetionString;
            string email = emailLogin.Text;
            string pass = passwordLogin.Text;
            SqlConnection cnn;

            connetionString = @"Data Source=DESKTOP-658T4M8\PLETBAKERY;Initial Catalog=users ;Integrated Security=True";

            if (emailLogin.Text == "")
            {
                loginEmailNotice.Visible = true;
            }
            if (passwordLogin.Text == "")
            {
                loginPassNotice.Visible = true;
            }

            cnn = new SqlConnection(connetionString);

            cnn.Open();
            string selectQuery = "select * from register where username='" + email + "' and password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(selectQuery, cnn);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Response.Redirect("~/PLET_MainPage.aspx");
            }
            else
            {
                
            }
            cnn.Close();
        }
    }
}