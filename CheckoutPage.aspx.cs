using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PLET_Bakery
{
    public partial class CheckoutPage : System.Web.UI.Page
    {
        public static String house = "Landed";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void houseBtn_Click(object sender, EventArgs e)
        {
            if (Appartment.Checked)
            {
                house = "Apartment";
                landedType.Visible = false;
                apartType.Visible = true;
                Landed.Checked = false;
                unitLanded.Text = "*";
                addressLanded.Text = "*";
            }
            if (Landed.Checked)
            {
                house = "Landed";
                landedType.Visible = true;
                apartType.Visible = false;
                Appartment.Checked = false;
                levelUnitInput.Text = "*";
                blockInput.Text = "*";
                builingNameInput.Text = "*";
                addressApartment.Text = "*";
            }
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PLET_MainPage.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void checkoutButton_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Data Source=DESKTOP-658T4M8\PLETBAKERY;Initial Catalog=users ;Integrated Security=True";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            string insertQuery = "insert into checkout(mobileCountry, mobile, name, houseType, landedUnit, landedAddress, apartmentLevel, apartmentBlock, apartmentBuilding, apartmentAddress, deliveryTime, deliveryDate) " +
                                 "values " +
                                 "(@mobileCountry, @mobile, @name, @houseType, @landedUnit, @landedAddress, @apartmentLevel, @apartmentBlock, @apartmentBuilding, @apartmentAddress, @deliveryTime, @deliveryDate)";
            SqlCommand cmd = new SqlCommand(insertQuery, cnn);
            cmd.Parameters.AddWithValue("@mobileCountry", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@mobile", TextBox3.Text);
            cmd.Parameters.AddWithValue("@name", mobileName.Text);
            cmd.Parameters.AddWithValue("@houseType", house);
            cmd.Parameters.AddWithValue("@landedUnit", unitLanded.Text);
            cmd.Parameters.AddWithValue("@landedAddress", addressLanded.Text);
            cmd.Parameters.AddWithValue("@apartmentLevel", levelUnitInput.Text);
            cmd.Parameters.AddWithValue("@apartmentBlock", blockInput.Text);
            cmd.Parameters.AddWithValue("@apartmentBuilding", builingNameInput.Text);
            cmd.Parameters.AddWithValue("@apartmentAddress", addressApartment.Text);
            cmd.Parameters.AddWithValue("@deliveryTime", time.Text);
            cmd.Parameters.AddWithValue("@deliveryDate", date.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Checkout Successful'); </script>");
            cnn.Close();
        }
    }
}