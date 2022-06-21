using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PLET_Bakery
{
    public partial class PLET_MainPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                table1.Visible = false;
                btnCheckout.Visible = false;
                btnClear.Visible = false;
                row1.Visible = false;
                row2.Visible = false;
                row3.Visible = false;
                row4.Visible = false;
                row5.Visible = false;
                row6.Visible = false;
                row7.Visible = false;
                row8.Visible = false;
                row9.Visible = false;
                row10.Visible = false;
                row11.Visible = false;
                row12.Visible = false;
                row13.Visible = false;
                row14.Visible = false;
                row15.Visible = false;
                row16.Visible = false;
                row17.Visible = false;
                row18.Visible = false;
                row19.Visible = false;
                row20.Visible = false;
                row21.Visible = false;
                row22.Visible = false;
                row23.Visible = false;
                row24.Visible = false;
                row25.Visible = false;
                row26.Visible = false;

            }
        }

        int i = 0, j = 0, total = 0, ordertotal = 0, minusvalue = 0, rowbeforetotal = 0, rowfinaltotal = 0;
        string[] arrName = new string[26];
        int[] arrPrice = new int[26];
        int[] arrTotal = new int[26];

        protected void BtnMyCart_Click(object sender, EventArgs e)
        {
            btnClear.Visible = true;
            table1.Visible = true;
            btnCheckout.Visible = true;
            btnMyCart.Visible = false;
            lblmenu.Visible = false;

            for(i=0; i<10; i++)
            {
                arrPrice[i] = 0;
                arrTotal[i] = 0;
            }

            i = 0;

            if (checkbox1.Checked)
            {
                checkbox1.Visible = false;
                arrName[i] = lblB1.Text;
                arrPrice[i] = 12;
                i++;
            }
            if (checkbox2.Checked)
            {
                checkbox2.Visible = false;
                arrName[i] = lblB2.Text;
                arrPrice[i] = 5;
                i++;
            }
            if (checkbox3.Checked)
            {
                checkbox3.Visible = false;
                arrName[i] = lblB3.Text;
                arrPrice[i] = 9;
                i++;
            }
            if (checkbox4.Checked)
            {
                arrName[i] = lblB4.Text;
                arrPrice[i] = 6;
                i++;
            }
            if (checkbox5.Checked)
            {
                arrName[i] = lblB5.Text;
                arrPrice[i] = 11;
                i++;
            }
            if (checkbox6.Checked)
            {
                arrName[i] = lblB6.Text;
                arrPrice[i] = 11;
                i++;
            }
            if (checkbox7.Checked)
            {
                arrName[i] = lblB7.Text;
                arrPrice[i] = 15;
                i++;
            }
            if (checkbox8.Checked)
            {
                arrName[i] = lblB8.Text;
                arrPrice[i] = 3;
                i++;
            }
            if (checkbox9.Checked)
            {
                arrName[i] = lblC1.Text;
                arrPrice[i] = 13;
                i++;
            }
            if (checkbox10.Checked)
            {
                arrName[i] = lblC2.Text;
                arrPrice[i] = 13;
                i++;
            }
            if (checkbox11.Checked)
            {
                arrName[i] = lblC3.Text;
                arrPrice[i] = 13;
                i++;
            }
            if (checkbox12.Checked)
            {
                arrName[i] = lblC4.Text;
                arrPrice[i] = 15;
                i++;
            }
            if (checkbox13.Checked)
            {
                arrName[i] = lblC5.Text;
                arrPrice[i] = 17;
                i++;
            }
            if (checkbox14.Checked)
            {
                arrName[i] = lblC6.Text;
                arrPrice[i] = 17;
                i++;
            }
            if (checkbox15.Checked)
            {
                arrName[i] = lblP1.Text;
                arrPrice[i] = 16;
                i++;
            }
            if (checkbox16.Checked)
            {
                arrName[i] = lblP2.Text;
                arrPrice[i] = 16;
                i++;
            }
            if (checkbox17.Checked)
            {
                arrName[i] = lblP3.Text;
                arrPrice[i] = 16;
                i++;
            }
            if (checkbox18.Checked)
            {
                arrName[i] = lblP4.Text;
                arrPrice[i] = 16;
                i++;
            }
            if (checkbox19.Checked)
            {
                arrName[i] = lblP5.Text;
                arrPrice[i] = 18;
                i++;
            }
            if (checkbox20.Checked)
            {
                arrName[i] = lblP6.Text;
                arrPrice[i] = 18;
                i++;
            }
            if (checkbox21.Checked)
            {
                arrName[i] = lblO1.Text;
                arrPrice[i] = 7;
                i++;
            }
            if (checkbox22.Checked)
            {
                arrName[i] = lblO2.Text;
                arrPrice[i] = 2;
                i++;
            }
            if (checkbox23.Checked)
            {
                arrName[i] = lblO3.Text;
                arrPrice[i] = 4;
                i++;
            }
            if (checkbox24.Checked)
            {
                arrName[i] = lblO4.Text;
                arrPrice[i] = 3;
                i++;
            }
            if (checkbox25.Checked)
            {
                arrName[i] = lblO5.Text;
                arrPrice[i] = 4;
                i++;
            }
            if (checkbox26.Checked)
            {
                arrName[i] = lblO6.Text;
                arrPrice[i] = 4;
                i++;
            }

            checkbox1.Visible = false;
            checkbox2.Visible = false;
            checkbox3.Visible = false;
            checkbox4.Visible = false;
            checkbox5.Visible = false;
            checkbox6.Visible = false;
            checkbox7.Visible = false;
            checkbox8.Visible = false;
            checkbox9.Visible = false;
            checkbox10.Visible = false;
            checkbox11.Visible = false;
            checkbox12.Visible = false;
            checkbox13.Visible = false;
            checkbox14.Visible = false;
            checkbox15.Visible = false;
            checkbox16.Visible = false;
            checkbox17.Visible = false;
            checkbox18.Visible = false;
            checkbox19.Visible = false;
            checkbox20.Visible = false;
            checkbox21.Visible = false;
            checkbox22.Visible = false;
            checkbox23.Visible = false;
            checkbox24.Visible = false;
            checkbox25.Visible = false;
            checkbox26.Visible = false;
            lblEmptyCart.Visible = false;

            i = 0;
            if (arrName[i] != null)
            {
                row1.Visible = true;
                lblRow1Name.Text = arrName[i];
                lblRow1Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow1.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow1Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row2.Visible = true;
                lblRow2Name.Text = arrName[i];
                lblRow2Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow2.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow2Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row3.Visible = true;
                lblRow3Name.Text = arrName[i];
                lblRow3Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow3.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow3Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row4.Visible = true;
                lblRow4Name.Text = arrName[i];
                lblRow4Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow4.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow4Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row5.Visible = true;
                lblRow5Name.Text = arrName[i];
                lblRow5Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow5.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow5Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row6.Visible = true;
                lblRow6Name.Text = arrName[i];
                lblRow6Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow3.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow6Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row7.Visible = true;
                lblRow7Name.Text = arrName[i];
                lblRow7Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow7.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow7Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row8.Visible = true;
                lblRow8Name.Text = arrName[i];
                lblRow8Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow8.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow8Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row9.Visible = true;
                lblRow9Name.Text = arrName[i];
                lblRow9Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow9.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow9Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row10.Visible = true;
                lblRow10Name.Text = arrName[i];
                lblRow10Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow10.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow10Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row11.Visible = true;
                lblRow11Name.Text = arrName[i];
                lblRow11Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow11.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow11Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row12.Visible = true;
                lblRow12Name.Text = arrName[i];
                lblRow12Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow12.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow12Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row13.Visible = true;
                lblRow13Name.Text = arrName[i];
                lblRow13Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow13.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow13Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row14.Visible = true;
                lblRow14Name.Text = arrName[i];
                lblRow14Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow14.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow14Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row15.Visible = true;
                lblRow15Name.Text = arrName[i];
                lblRow15Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow15.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow15Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row16.Visible = true;
                lblRow16Name.Text = arrName[i];
                lblRow16Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow16.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow16Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row17.Visible = true;
                lblRow17Name.Text = arrName[i];
                lblRow17Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow17.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow17Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row18.Visible = true;
                lblRow18Name.Text = arrName[i];
                lblRow18Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow18.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow18Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row19.Visible = true;
                lblRow19Name.Text = arrName[i];
                lblRow19Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow19.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow19Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row20.Visible = true;
                lblRow20Name.Text = arrName[i];
                lblRow20Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow20.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow20Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row21.Visible = true;
                lblRow21Name.Text = arrName[i];
                lblRow21Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow21.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow21Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row22.Visible = true;
                lblRow22Name.Text = arrName[i];
                lblRow22Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow22.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow22Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row23.Visible = true;
                lblRow23Name.Text = arrName[i];
                lblRow23Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow23.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow23Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row24.Visible = true;
                lblRow24Name.Text = arrName[i];
                lblRow24Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow24.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow24Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row25.Visible = true;
                lblRow25Name.Text = arrName[i];
                lblRow25Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow25.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow25Total.Text = total.ToString();
                i++;
            }
            if (arrName[i] != null)
            {
                row26.Visible = true;
                lblRow26Name.Text = arrName[i];
                lblRow26Price.Text = arrPrice[i].ToString();
                j = int.Parse(tbRow26.Text);
                total = j * arrPrice[i];
                arrTotal[i] = total;
                lblRow26Total.Text = total.ToString();
              
            }

            CalculateOrder();
        }

        protected void CalculateOrder()
        {
            ordertotal = 0;
            for ( i=0; i<26; i++)
            {
                ordertotal += arrTotal[i];
            }
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }

        protected void BtnRemove1_Click(object sender, EventArgs e)
        {
            
            row1.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow1Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }

        protected void BtnRemove2_Click(object sender, EventArgs e)
        {
            
            row2.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow2Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }

        protected void BtnRemove3_Click(object sender, EventArgs e)
        {
            
            row3.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow3Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }

        protected void BtnRemove4_Click(object sender, EventArgs e)
        {
            row4.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow4Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove5_Click(object sender, EventArgs e)
        {
            row5.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow5Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove6_Click(object sender, EventArgs e)
        {
            row6.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow6Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove7_Click(object sender, EventArgs e)
        {
            row7.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow7Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove8_Click(object sender, EventArgs e)
        {
            row8.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow8Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove9_Click(object sender, EventArgs e)
        {
            row9.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow9Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove10_Click(object sender, EventArgs e)
        {
            row10.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow10Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove11_Click(object sender, EventArgs e)
        {
            row11.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow11Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove12_Click(object sender, EventArgs e)
        {
            row12.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow12Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove13_Click(object sender, EventArgs e)
        {
            row13.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow13Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove14_Click(object sender, EventArgs e)
        {
            row14.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow14Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove15_Click(object sender, EventArgs e)
        {
            row15.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow15Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove16_Click(object sender, EventArgs e)
        {
            row16.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow16Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove17_Click(object sender, EventArgs e)
        {
            row17.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow17Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove18_Click(object sender, EventArgs e)
        {
            row18.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow18Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove19_Click(object sender, EventArgs e)
        {
            row19.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow19Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove20_Click(object sender, EventArgs e)
        {
            row20.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow20Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove21_Click(object sender, EventArgs e)
        {
            row21.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow21Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove22_Click(object sender, EventArgs e)
        {
            row22.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow22Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove23_Click(object sender, EventArgs e)
        {
            row3.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow3Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove24_Click(object sender, EventArgs e)
        {
            row24.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow24Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove25_Click(object sender, EventArgs e)
        {
            row25.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow25Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }
        protected void BtnRemove26_Click(object sender, EventArgs e)
        {
            row26.Visible = false;
            ordertotal = int.Parse(lblTotalAfter.Text);
            minusvalue = int.Parse(lblRow26Total.Text);
            ordertotal -= minusvalue;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
        }


        protected void ChangeQuantityRow1(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow1Total.Text);
            rowfinaltotal = int.Parse(lblRow1Price.Text) * int.Parse(tbRow1.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow1Total.Text = rowfinaltotal.ToString();
            
        }

        protected void ChangeQuantityRow2(object sender, EventArgs e)
        {
            
            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow2Total.Text);
            rowfinaltotal = int.Parse(lblRow2Price.Text) * int.Parse(tbRow2.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow2Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow3(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow3Total.Text);
            rowfinaltotal = int.Parse(lblRow3Price.Text) * int.Parse(tbRow3.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow3Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow4(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow4Total.Text);
            rowfinaltotal = int.Parse(lblRow4Price.Text) * int.Parse(tbRow4.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow4Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow5(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow5Total.Text);
            rowfinaltotal = int.Parse(lblRow5Price.Text) * int.Parse(tbRow5.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow5Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow6(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow6Total.Text);
            rowfinaltotal = int.Parse(lblRow6Price.Text) * int.Parse(tbRow6.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow6Total.Text = rowfinaltotal.ToString();

        }
        protected void ChangeQuantityRow7(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow7Total.Text);
            rowfinaltotal = int.Parse(lblRow7Price.Text) * int.Parse(tbRow7.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow7Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow8(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow8Total.Text);
            rowfinaltotal = int.Parse(lblRow8Price.Text) * int.Parse(tbRow8.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow8Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow9(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow9Total.Text);
            rowfinaltotal = int.Parse(lblRow9Price.Text) * int.Parse(tbRow9.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow9Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow10(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow10Total.Text);
            rowfinaltotal = int.Parse(lblRow10Price.Text) * int.Parse(tbRow10.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow10Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow11(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow11Total.Text);
            rowfinaltotal = int.Parse(lblRow11Price.Text) * int.Parse(tbRow11.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow11Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow12(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow12Total.Text);
            rowfinaltotal = int.Parse(lblRow12Price.Text) * int.Parse(tbRow12.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow12Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow13(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow13Total.Text);
            rowfinaltotal = int.Parse(lblRow13Price.Text) * int.Parse(tbRow13.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow13Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow14(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow14Total.Text);
            rowfinaltotal = int.Parse(lblRow14Price.Text) * int.Parse(tbRow14.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow14Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow15(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow15Total.Text);
            rowfinaltotal = int.Parse(lblRow15Price.Text) * int.Parse(tbRow15.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow15Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow16(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow16Total.Text);
            rowfinaltotal = int.Parse(lblRow16Price.Text) * int.Parse(tbRow16.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow16Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow17(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow17Total.Text);
            rowfinaltotal = int.Parse(lblRow17Price.Text) * int.Parse(tbRow17.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow17Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow18(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow18Total.Text);
            rowfinaltotal = int.Parse(lblRow18Price.Text) * int.Parse(tbRow18.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow18Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow19(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow19Total.Text);
            rowfinaltotal = int.Parse(lblRow19Price.Text) * int.Parse(tbRow19.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow19Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow20(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow20Total.Text);
            rowfinaltotal = int.Parse(lblRow20Price.Text) * int.Parse(tbRow20.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow20Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow21(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow21Total.Text);
            rowfinaltotal = int.Parse(lblRow21Price.Text) * int.Parse(tbRow21.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow21Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow22(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow22Total.Text);
            rowfinaltotal = int.Parse(lblRow22Price.Text) * int.Parse(tbRow22.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow22Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow23(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow23Total.Text);
            rowfinaltotal = int.Parse(lblRow23Price.Text) * int.Parse(tbRow23.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow23Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow24(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow24Total.Text);
            rowfinaltotal = int.Parse(lblRow24Price.Text) * int.Parse(tbRow24.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow24Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow25(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow25Total.Text);
            rowfinaltotal = int.Parse(lblRow25Price.Text) * int.Parse(tbRow25.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow25Total.Text = rowfinaltotal.ToString();

        }

        protected void ChangeQuantityRow26(object sender, EventArgs e)
        {

            ordertotal = int.Parse(lblTotalAfter.Text);
            rowbeforetotal = int.Parse(lblRow26Total.Text);
            rowfinaltotal = int.Parse(lblRow26Price.Text) * int.Parse(tbRow26.Text);


            ordertotal = ordertotal - rowbeforetotal + rowfinaltotal;
            lblTotalAfter.Text = ordertotal.ToString();
            lblsubtotal.Text = ordertotal.ToString();
            lblRow26Total.Text = rowfinaltotal.ToString();

        }

        protected void BtnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CheckoutPage.aspx");
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Data Source=DESKTOP-658T4M8\PLETBAKERY;Initial Catalog=users ;Integrated Security=True";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            string insertQuery = "insert into comment(name, email, phone, date, comment) values (@name, @email, @phone, @date, @comment)";
            SqlCommand cmd = new SqlCommand(insertQuery, cnn);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@date", TextBox5.Text);
            cmd.Parameters.AddWithValue("@comment", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Comment Successful'); </script>");
            cnn.Close();
        }
        protected void BtnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PLET_MainPage.aspx");
        }

    }
}