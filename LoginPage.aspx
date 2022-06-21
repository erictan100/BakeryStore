<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PLET_Bakery.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>P-LET Bakery Store</title>
    
    <link href="Login.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!--------------------------Login-------------------->
            <section class="login">
                <asp:Image ID="Image4" runat="server" CssClass="login_bg" ImageUrl="~/Images/Login_bg.png" />
                
                
                <div class="login_container ">
                    <div class="form_content_tabs grid">
                        <div class="form_tab_btn" data-target="#register">
                            REGISTER
                        </div>

                        <div class="form_tab_btn form_active" data-target="#login">
                            LOGIN
                        </div>
                    </div>

                    <div class="login_content form_active grid" data-content id="login">
                        <div class="logo">
                            <asp:Image ID="Image5" runat="server" CssClass="logo_img" ImageUrl="~/Images/Logo.png" />
                            
                        </div>
                        <div class="login_form">

                            <asp:Label ID="RegisterNotice2" runat="server" Visible="False" ForeColor="Red" Font-Size="Large"></asp:Label>

                            <div class="loginForm_content">
                                <asp:Label ID="Label6" runat="server" Text="Email Address" CssClass="login_label"></asp:Label>
                                <asp:TextBox ID="emailLogin" runat="server" TextMode="Email" AutoCompleteType="Email" CssClass="login_input"></asp:TextBox>
                                <br />
                                <asp:Label ID="loginEmailNotice" runat="server" Text="Please Enter Your Email Address" ForeColor="Red" Font-Size="16px" Visible="False"></asp:Label>
                            </div>

                            <div class="loginForm_content">
                                <asp:Label ID="Label7" runat="server" Text="Password" CssClass="login_label"></asp:Label>
                                <asp:TextBox ID="passwordLogin" runat="server" TextMode="Password" CssClass="login_input"></asp:TextBox>
                                <br />
                                <asp:Label ID="loginPassNotice" runat="server" Text="Please Enter Your Password" ForeColor="Red" Font-Size="16px" Visible="False"></asp:Label>
                            </div>

                            <div>
                                <asp:Button ID="loginButton" runat="server" Text="LOGIN" CssClass="loginForm_btn" OnClick="loginButton_Click" />
                                
                            </div>

                            <div class="login_alt">
                                <asp:Label ID="Label8" runat="server" Text="or Connect with Social Media" CssClass="login_label"></asp:Label>
                                <a href="#" class="tw_login_btn">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/icon_tw.png" CssClass="login_img" />
                                    <span>Login With Twitter</span>
                                </a>

                                <a href="#" class="fb_login_btn">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/icon_fb.png" CssClass="login_img" />
                                    <span>Login With Facebook</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="login_content grid" data-content id="register">

                        <div class="register_form">
                            <div class="registerForm_content">
                                <asp:Label ID="Label1" runat="server" Text="Name" CssClass="register_label"></asp:Label>
                                <asp:TextBox ID="name" runat="server" CssClass="register_input"></asp:TextBox>
                                
                            </div>

                            <div class="registerForm_content">
                                <asp:Label ID="Label2" runat="server" Text="Email Address" CssClass="register_label"></asp:Label>
                                <asp:TextBox ID="email" runat="server" CssClass="register_input" TextMode="Email" AutoCompleteType="Email"></asp:TextBox>
                                
                            </div>

                            <div class="registerForm_content">
                                <asp:Label ID="Label3" runat="server" Text="Contact" CssClass="register_label"></asp:Label>
                                <asp:TextBox ID="contact" runat="server" CssClass="register_input" TextMode="Phone" AutoCompleteType="Disabled"></asp:TextBox>
                                
                            </div>

                            <div class="registerForm_content">
                                <asp:Label ID="Label4" runat="server" Text="Password" CssClass="register_label"></asp:Label>
                                <asp:TextBox ID="password1" runat="server" CssClass="register_input" TextMode="Password" AutoCompleteType="None"></asp:TextBox>
                                
                            </div>

                            <div class="registerForm_content">
                                <asp:Label ID="Label5" runat="server" Text="Confrim Password" CssClass="register_label"></asp:Label>
                                <asp:TextBox ID="password2" runat="server" CssClass="register_input" TextMode="Password" AutoCompleteType="None"></asp:TextBox>
                                
                            </div>

                            <div class="registerForm_content">
                                <asp:CheckBox ID="Register_CheckBox" runat="server" />
                                 <p class="register_label">Once you click on the check box. You are agree with our Term and Conditions</p>
                            </div>

                            <div class="register_function">
                                <asp:Button ID="register_Button" runat="server" Text="Register" CssClass="registerForm_btn" OnClick="register_Button_Click"/>
                                <br />
                                <asp:Label ID="RegisterNotice1" runat="server" Visible="False" ForeColor="Red" Font-Size="Large"></asp:Label>
                            </div>


                        </div>

                        <div class="logo">
                            <asp:Image ID="Image1" runat="server" CssClass="logo_img" ImageUrl="~/Images/Logo.png" />
                        </div>

                    </div>

                </div>

            </section>

            <!--------------------------FOOTER-------------------->

            <div class="footer_copyright">
                <p>
                    Copyright &copy; 2021 by PLET BAKERY Sdn Bhd. All Rights Reserved.
                </p>
                <p>
                    P-LET Bakery owned and operate by Pang Wei Rong, Low Wei Lin, Eric Tan Shing Li, Teo Yin Yin
                </p>
            </div>

        </div>

        <script src="Resources/LoginPage.js"></script>

    </form>
</body>
</html>
