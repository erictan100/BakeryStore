<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutPage.aspx.cs" Inherits="PLET_Bakery.CheckoutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>P-LET Bakery Store</title>

    <link href="Checkout.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="checkoutForm">
            
            <asp:Button ID="backButton" runat="server" Text="&lt; Cancel" CssClass="backButton" Height="55px" OnClick="backButton_Click" />
            <div class="form_container container">
                
                <asp:Label ID="form_ContactTitle" runat="server" Text="Delivery Details" CssClass="form_title"></asp:Label>
                <asp:Label ID="form_ContactSubtitle" runat="server" Text="Please enter all details below for completing the order" CssClass="form_subtitle"></asp:Label>

                <br />
                <p class="align_center">*******************************************************************</p>
                <br />
                <div class="form_details">

                    <asp:Label ID="formSection_title1" runat="server" Text="Contact Info" CssClass="form_title2"></asp:Label>
                    <div class="phone_section">
                        <asp:Label ID="mobileLabel" runat="server" Text="Mobile*" CssClass="form_label"></asp:Label>
                        <div class="phone_input form_input">
                            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="form_input">
                                <asp:ListItem Value="0">Select Your country</asp:ListItem>
                                <asp:ListItem Value="+60">Malaysia (+60)</asp:ListItem>
                                <asp:ListItem Value="+65">Singapore (+65)</asp:ListItem>
                            </asp:DropDownList>

                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone" CssClass="form_input"></asp:TextBox>
                        </div>
                        <asp:Label ID="Label3" runat="server" Text="Name of Mobile Owner <br/>" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="mobileName" runat="server" CssClass="form_input"></asp:TextBox>
                    </div>
                   
                    <br />
                    <asp:Label ID="formSection_title2" runat="server" Text="Delivery Address" CssClass="form_title2"></asp:Label>
                     <div class="radio_section">
                        <asp:Label ID="Label4" runat="server" Text="Deliver To" CssClass="form_label"></asp:Label>
                        <div class="houseType_radio">
                            <asp:RadioButton ID="Landed" runat="server" Text="Landed" GroupName="houseType" CssClass="form_input" Checked="True"/>
                            <asp:RadioButton ID="Appartment" runat="server" Text="Apartment/Condo/Hi-rise" GroupName="houseType" CssClass="form_input"/>
                            <asp:Button ID="houseBtn" runat="server" Text="Choose" OnClick="houseBtn_Click" CssClass="houseBtn" />
                        </div>

                        <div id="landedType" class="landedAddress" runat="server" Visible="true">
                            <asp:Label ID="unitLabel" runat="server" Text="Unit Number" CssClass="form_label"></asp:Label>
                            <asp:TextBox ID="unitLanded" runat="server" CssClass="form_input"></asp:TextBox>

                            <asp:Label ID="addressLabel1" runat="server" Text="Address" CssClass="form_label"></asp:Label>
                            <asp:TextBox ID="addressLanded" runat="server" TextMode="MultiLine" CssClass="form_input" Rows="5"></asp:TextBox>
                        </div>

                        <div id="apartType" class="apartmentAddress" runat="server" Visible="false">
                            <div class="apartment_level grid">
                                <div class="apartmentAddress">
                                    <asp:Label ID="levelLabel" runat="server" Text="Level/Unit" CssClass="form_label"></asp:Label>
                                    <asp:TextBox ID="levelUnitInput" runat="server" CssClass="form_input"></asp:TextBox>
                                </div>
                                <div class="apartmentAddress">
                                    <asp:Label ID="blockLabel" runat="server" Text="Block" CssClass="form_label"></asp:Label>
                                    <asp:TextBox ID="blockInput" runat="server" CssClass="form_input"></asp:TextBox>
                                </div>
                            </div>

                            <asp:Label ID="buildingLabel" runat="server" Text="Building Name" CssClass="form_label"></asp:Label>
                            <asp:TextBox ID="builingNameInput" runat="server" CssClass="form_input"></asp:TextBox>

                            <asp:Label ID="addressLabel2" runat="server" Text="Address" CssClass="form_label"></asp:Label>
                            <asp:TextBox ID="addressApartment" runat="server" TextMode="MultiLine" CssClass="form_input" Rows="5"></asp:TextBox>
                        </div>
                    </div>
                    
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Deliver Info" CssClass="form_title2"></asp:Label>
                    <div class="info">
                        <asp:Label ID="timeLabel" runat="server" Text="Delivery Time"></asp:Label>
                        <asp:TextBox ID="time" runat="server" TextMode="Time" CssClass="form_input"></asp:TextBox>

                        <asp:Label ID="dateLabel" runat="server" Text="Delivery Date"></asp:Label>
                        <asp:TextBox ID="date" runat="server" TextMode="Date" CssClass="form_input"></asp:TextBox>
                    </div>


                    <asp:Button ID="completeBtn" runat="server" Text="Submit" CssClass="checkoutBtn" OnClick="checkoutButton_Click" />
                </div>

                
            </div>
        </div>

        <!--------------------------FOOTER-------------------->
        <footer class="footer" id="footer">
            <div class="footer_bg">
                <div class="footer_copyright">
                    <p>
                        Copyright &copy; 2021 by PLET BAKERY Sdn Bhd. All Rights Reserved.
                    </p>
                    <p>
                        P-LET Bakery owned and operate by Pang Wei Rong, Low Wei Lin, Eric Tan Shing Li, Teo Yin Yin
                    </p>
                </div>
            </div>
        </footer>

    </form>
</body>
</html>
