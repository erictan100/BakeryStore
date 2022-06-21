<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PLET_MainPage.aspx.cs" Inherits="PLET_Bakery.PLET_MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>P-LET Bakery Store</title>

    <link href="Bakery.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--------------------------HEADING-------------------->
            <header class="header_bg" id="header">
                <div class="header">
                    <nav class="nav container">
                        <a href="#">
                            <asp:Image ID="Image1" runat="server" CssClass="logo" ImageUrl="~/Images/Logo.png" />
                        </a>
                        <a href="#">
                            <asp:Image ID="Image2" runat="server" CssClass="nav_icon" ImageUrl="~/Images/logo_text.png" />
                        </a>
                      
                        <div class="nav_menu" id="nav_menu">
                            <ul class="nav_list grid">
                                <li>
                                    <a href="#Main" class="nav_link">Home</a>
                                </li>
                                <li>
                                    <a href="#menu" class="nav_link">Our Menu</a>
                                </li>
                                <li>
                                    <a href="#cart" class="nav_link">Cart</a>
                                </li>
                                <li>
                                    <a href="Location.aspx" class ="nav_link">Location</a>
                                </li>
                                <li>
                                    <a href="LoginPage.aspx" class="nav_link">Logout</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </header>


            <!--------------------------MAIN-------------------->
            <section class="Main" id="Main">

                <div class="main_container" id="main_contain1">
                    <div>   
                        <asp:Image ID="Image3" runat="server" CssClass="main_img" ImageUrl="~/Images/ss1.png" />
                    </div>
                </div>

                <div class="main_container" id="main_contain2">
                    <div>
                        <asp:Image ID="Image4" runat="server" CssClass="main_img" ImageUrl="~/Images/ss2.png"/>            
                    </div>
                </div>

                <div class="main_container" id="main_contain3">
                    <div>
                        <asp:Image ID="Image5" runat="server" CssClass="main_img" ImageUrl="~/Images/ss3.png"/>            
                    </div>
                </div>

                <div class="bottom_pointer">
                    <p class="pointer"></p>
                    <p class="pointer"></p>
                    <p class="pointer"></p>
                </div>

                <a class="next" onclick="nextslide(1)">&gt;</a>
                <a class="previous" onclick="nextslide(-1)">&lt;</a>

            </section>

            <!--------------------------MENU-------------------->
            <div class="menu section" id="menu">
                <h2 class="menu_title">Our Menu</h2>
                <p class="menu_subtitle">All products are fresh made and free from preservative</p>

                <div class="menu_container container">
                    <div class="menu_tabs">
                        <div class="menu_btn menu_active" data-target='#bread'>
                            Bread
                        </div>

                        <div class="menu_btn" data-target="#cake">
                            Cake
                        </div>

                        <div class="menu_btn" data-target="#pie">
                            Pie
                        </div>

                        <div class="menu_btn" data-target="#others">
                            Others
                        </div>
                    </div>

                    <div class="menu_content menu_active" data-content id="bread">
                    <div class="menu_item">
                            <div class="card">
                                <asp:Image ID="Image6" runat="server" CssClass="item_img" ImageUrl="~/Images/b1.png" />

                                <asp:Label runat="server" id="lblB1">
                                   <p class="card_title">
                                       Banana Bread
                                   </p> 
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM12.00/pc</p>
                                    </div>
                                </div>
                                <asp:CheckBox ID="checkbox1" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="12"/>
                                
                            </div>

                            <div class="card">
                                <asp:Image ID="Image7" runat="server" CssClass="item_img" ImageUrl="~/Images/b2.png" />

                                <asp:Label runat="server" id="lblB2">
                                    <p class="card_title">
                                    Baguette
                                    </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM5.00/pc</p>
                                    </div>
                                </div>
                               
                                <asp:CheckBox ID="checkbox2" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="5"/>
                                
                            </div>

                            <div class="card">
                                <asp:Image ID="Image8" runat="server" CssClass="item_img" ImageUrl="~/Images/b3.png" />

                                <asp:Label runat="server" id="lblB3">
                                    <p class="card_title">
                                    Challa
                                    </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM9.00/pc</p>
                                    </div>
                                </div>
                                
                                <asp:CheckBox ID="checkbox3" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="9"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image9" runat="server" CssClass="item_img" ImageUrl="~/Images/b4.png" />
                                <asp:Label runat="server" id="lblB4">
                                <p class="card_title">
                                    Ciabatta
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM6.00/pc</p>
                                    </div>
                                </div>
                                <asp:CheckBox ID="checkbox4" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="6"/>
                                
                            </div>

                            <div class="card">
                                <asp:Image ID="Image10" runat="server" CssClass="item_img" ImageUrl="~/Images/b5.png" />
                                <asp:Label runat="server" id="lblB5">
                                <p class="card_title">
                                    Multigrain Bread
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM11.00/pc</p>
                                    </div>
                                </div>
                                <asp:CheckBox ID="checkbox5" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="11"/>

                            </div>

                            <div class="card">
                                <asp:Image ID="Image11" runat="server" CssClass="item_img" ImageUrl="~/Images/b6.png" />
                                <asp:Label runat="server" id="lblB6">
                                <p class="card_title">
                                    Pumpernickel
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM11.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox6" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="11"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image12" runat="server" CssClass="item_img" ImageUrl="~/Images/b7.png" />
                                <asp:Label runat="server" id="lblB7">
                                <p class="card_title">
                                    Sourdough
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM15.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox7" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="15"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image13" runat="server" CssClass="item_img" ImageUrl="~/Images/b8.png" />
                                <asp:Label runat="server" id="lblB8">
                                <p class="card_title">
                                    South Afriaca Little Bun
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM3.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox8" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="3"/>
                            </div>

                        </div>
                        </div>
                    <div class="menu_content menu_active" data-content id="bread">
                    </div>

                    <div class="menu_content" data-content id="cake">
                        <div class="menu_item">
                            <div class="card">
                                <asp:Image ID="Image14" runat="server" CssClass="item_img" ImageUrl="~/Images/c1.png" />
                                <asp:Label runat="server" id="lblC1">
                                <p class="card_title">
                                    Whipped Lemon Ricotta Cake
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM13.00/pc</p>
                                    </div>
                                </div>


                                <asp:CheckBox ID="checkbox9" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="13"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image15" runat="server" CssClass="item_img" ImageUrl="~/Images/c2.png" />
                                <asp:Label runat="server" id="lblC2">
                                <p class="card_title">
                                    Swiried Coconut Tres Leches Cake
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM13.00/pc</p>
                                    </div>
                                </div>


                                <asp:CheckBox ID="checkbox10" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="13"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image16" runat="server" CssClass="item_img" ImageUrl="~/Images/c3.png" />
                                <asp:Label runat="server" id="lblC3">
                                <p class="card_title">
                                    Salted Caremal Chocolate Cake
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM13.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox11" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="15"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image17" runat="server" CssClass="item_img" ImageUrl="~/Images/c4.png" />
                                <asp:Label runat="server" id="lblC4">
                                <p class="card_title">
                                    Russian Napoleon Cake
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM15.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox12" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="17"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image18" runat="server" CssClass="item_img" ImageUrl="~/Images/c5.png" />
                                <asp:Label runat="server" id="lblC5">
                                <p class="card_title">
                                    Merry Berry Christmas Cake
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM17.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox13" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="17"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image19" runat="server" CssClass="item_img" ImageUrl="~/Images/c6.png" />
                                <asp:Label runat="server" id="lblC6">
                                <p class="card_title">
                                    Scotland Fruit Cake
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM17.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox14" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="13"/>
                            </div>
                        </div>
                    </div>

                    <div class="menu_content" data-content id="pie">
                        <div class="menu_item">
                            <div class="card">
                                <asp:Image ID="Image20" runat="server" CssClass="item_img" ImageUrl="~/Images/p1.png" />
                                <asp:Label runat="server" id="lblP1">
                                <p class="card_title">
                                    Gooey Pumpkin Pie
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM16.00/pc</p>
                                    </div>
                                </div>      

                                <asp:CheckBox ID="checkbox15" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="16"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image21" runat="server" CssClass="item_img" ImageUrl="~/Images/p2.png" />
                                <asp:Label runat="server" id="lblP2">
                                <p class="card_title">
                                    Molten Chocolate Crakle Pie
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM16.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox16" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="16"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image22" runat="server" CssClass="item_img" ImageUrl="~/Images/p3.png" />
                                <asp:Label runat="server" id="lblP3">
                                <p class="card_title">
                                    Butterscotch Pie
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM16.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox17" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="16"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image23" runat="server" CssClass="item_img" ImageUrl="~/Images/p4.png" />
                                <asp:Label runat="server" id="lblP4">
                                <p class="card_title">
                                    Grain Free Blueberry Pie
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM16.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox18" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="16"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image24" runat="server" CssClass="item_img" ImageUrl="~/Images/p5.png" />
                                <asp:Label runat="server" id="lblP5">
                                <p class="card_title">
                                    Starberry Rhubard Maringue Pie
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM18.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox19" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="18"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image25" runat="server" CssClass="item_img" ImageUrl="~/Images/p6.png" />
                                <asp:Label runat="server" id="lblP6">
                                <p class="card_title">
                                    Classic Fresh Strawberry Pie
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM18.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox20" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="18"/>
                            </div>
                        </div>
                    </div>

                    <div class="menu_content" data-content id="others">
                        <div class="menu_item">
                            <div class="card">
                                <asp:Image ID="Image26" runat="server" CssClass="item_img" ImageUrl="~/Images/o1.png" />
                                <asp:Label runat="server" id="lblO1">
                                <p class="card_title">
                                    Gaint Salted Espresso Fudge Cookies
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM7.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox21" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="7"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image27" runat="server" CssClass="item_img" ImageUrl="~/Images/o2.png" />
                                <asp:Label runat="server" id="lblO2">
                                <p class="card_title">
                                    Toasted Coconut Toffee Cookies
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM2.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox22" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="2"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image28" runat="server" CssClass="item_img" ImageUrl="~/Images/o3.png" />
                                <asp:Label runat="server" id="lblO3">
                                <p class="card_title">
                                    Buttery Rasberry Crumble Bars
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM4.00/pcs</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox23" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="4"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image29" runat="server" CssClass="item_img" ImageUrl="~/Images/o4.png" />
                                <asp:Label runat="server" id="lblO4">
                                <p class="card_title">
                                    Mini Pineapple Upside Down Tart
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM3.00/pc</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox24" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="3"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image30" runat="server" CssClass="item_img" ImageUrl="~/Images/o5.png" />
                                <asp:Label runat="server" id="lblO5">
                                <p class="card_title">
                                    Berries Mini Tart With Mascarpone
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM4.00/pcs</p>
                                    </div>
                                </div>

                                <asp:CheckBox ID="checkbox25" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="4"/>
                            </div>

                            <div class="card">
                                <asp:Image ID="Image31" runat="server" CssClass="item_img" ImageUrl="~/Images/o6.png" />
                                <asp:Label runat="server" id="lblO6">
                                <p class="card_title">
                                    Meyer Lemon Bars
                                </p>
                                </asp:Label>
                                <div class="card_description">
                                    <div class="item_prices">
                                        <p>Price:</p>
                                        <p>RM4.00/pc</p>
                                    </div>
                                </div>

                               <asp:CheckBox ID="checkbox26" runat="server"  CssClass="btn_sub" Text="Add To Cart" Value="4"/>
                            </div>
                        </div>
                    </div>
               
                </div>
            </>
            
            <br />            
            <br />
            <asp:Label runat="server" class="menu_subtitle" id="lblmenu">Press on the button after comfirming your selection</asp:Label>
            <asp:Button ID="btnMyCart" runat="server" OnClick="BtnMyCart_Click" Text="Complete Selection" CssClass="btn_sub2" Width="40%"/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <p class="align_center">**********************************************************************************************</p>
            <br />
            <!--------------------------CART-------------------->
            <section class="cart section" id="cart">
                <h2 class="menu_title">My Cart</h2>
                <p class="menu_subtitle">All your 'Add To Cart' items would be shown at below</p>

                <div class="cart_container container">
                    <div>
                        <h3 class="cart_details_title">Cart List</h3>
                        <asp:Table runat="server" id="table1" style="width:150%">
                             <asp:TableRow runat="server">
                                <asp:TableCell runat="server" class="card_title" style="width:35%">Product</asp:TableCell>
                                <asp:TableCell runat="server" class="card_title" style="width:15%">Price (RM)</asp:TableCell>
                                <asp:TableCell runat="server" class="card_title" style="width:15%">Quantity</asp:TableCell>
                                <asp:TableCell runat="server" class="card_title" style="width:25%">Remove</asp:TableCell>
                                <asp:TableCell runat="server" class="card_title" style="width:10%">Total (RM)</asp:TableCell>
                             </asp:TableRow>

                           
                            <asp:TableRow id="row1" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow1Name" Text="1"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow1Price" Text="1"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow1" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow1" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove1" runat="server" onClick="BtnRemove1_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow1Total" Text="1"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row2" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow2Name" Text="2"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow2Price" Text="2"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow2" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow2" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove2" runat="server" onClick="BtnRemove2_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow2Total" Text="2"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row3" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow3Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow3Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow3" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow3" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove3" runat="server" onClick="BtnRemove3_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow3Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row4" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow4Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow4Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow4" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow4" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove4" runat="server" onClick="BtnRemove4_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow4Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row5" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow5Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow5Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow5" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow5" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove5" runat="server" onClick="BtnRemove5_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow5Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row6" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow6Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow6Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow6" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow6" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove6" runat="server" onClick="BtnRemove6_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow6Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row7" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow7Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow7Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow7" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow7" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove7" runat="server" onClick="BtnRemove7_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow7Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row8" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow8Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow8Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow8" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow8" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove8" runat="server" onClick="BtnRemove8_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow8Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row9" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow9Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow9Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow9" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow9" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove9" runat="server" onClick="BtnRemove9_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow9Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row10" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow10Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow10Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow10" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow10" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove10" runat="server" onClick="BtnRemove10_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow10Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row11" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow11Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow11Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow11" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow11" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove11" runat="server" onClick="BtnRemove11_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow11Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row12" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow12Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow12Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow12" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow12" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove12" runat="server" onClick="BtnRemove12_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow12Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row13" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow13Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow13Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow13" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow13" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove13" runat="server" onClick="BtnRemove13_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow13Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row14" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow14Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow14Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow14" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow14" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove14" runat="server" onClick="BtnRemove14_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow14Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row15" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow15Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow15Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow15" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow15" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove15" runat="server" onClick="BtnRemove15_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow15Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row16" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow16Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow16Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow16" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow16" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove16" runat="server" onClick="BtnRemove16_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow16Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row17" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow17Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow17Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow17" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow17" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove17" runat="server" onClick="BtnRemove17_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow17Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row18" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow18Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow18Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow18" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow18" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove18" runat="server" onClick="BtnRemove18_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow18Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row19" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow19Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow19Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow19" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow19" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove19" runat="server" onClick="BtnRemove19_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow19Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row20" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow20Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow20Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow20" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow20" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove20" runat="server" onClick="BtnRemove20_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow20Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row21" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow21Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow21Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow21" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow21" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove21" runat="server" onClick="BtnRemove21_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow21Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row22" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow22Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow22Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow22" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow22" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove22" runat="server" onClick="BtnRemove22_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow22Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row23" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow23Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow23Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow23" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow23" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove23" runat="server" onClick="BtnRemove23_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow23Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row24" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow24Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow24Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow24" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow24" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove24" runat="server" onClick="BtnRemove24_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow24Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row25" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow25Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow25Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow25" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow25" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove25" runat="server" onClick="BtnRemove25_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow25Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow><asp:TableRow id="row26" runat="server">
                                <asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow26Name" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow26Price" Text="3"></asp:Label>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:TextBox runat="server" ID="tbRow26" type="number" AutoPostBack="true" OnTextChanged ="ChangeQuantityRow26" Text="1" min="1" style="width:40px"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Button ID="remove26" runat="server" onClick="BtnRemove26_Click" Text="Remove" CssClass="btn_sub" Width="30%"/>
                                </asp:TableCell><asp:TableCell runat="server" >
                                    <asp:Label runat="server" ID="lblRow26Total" Text="3"></asp:Label>
                                </asp:TableCell></asp:TableRow></asp:Table><br />
                        <asp:Label runat="server" ID="lblEmptyCart" class="cart_details_title" Text="Your Cart is Empty!" />
                        <br />
                        <br />
                        <div class="cart_details">
                            <div class="cart_pointer">
                                <asp:Label ID="Label2" runat="server" Text="Subtotal:" CssClass="cart_details_pointer"></asp:Label></div><div class="cart_pointer">
                                <p>
                                     RM <asp:Label ID="lblsubtotal" runat="server" Text="0" CssClass="cart_details_subtitle"></asp:Label>.00 </p></div><div class="cart_pointer">
                                <asp:Label ID="Label10" runat="server" Text="Tax (10%, Included):" CssClass="cart_details_pointer"></asp:Label></div><div class="cart_pointer">
                                <p>
                                     RM <asp:Label ID="Label11" runat="server" Text="0" CssClass="cart_details_subtitle"></asp:Label>.00 </p></div><div class="cart_pointer">
                                <asp:Label ID="Label9" runat="server" Text="Shipping Fee (Free of Charge):" CssClass="cart_details_pointer"></asp:Label></div><div class="cart_pointer">
                                <p>
                                     RM <asp:Label ID="Label12" runat="server" Text="0" CssClass="cart_details_subtitle"></asp:Label>.00 </p></div><div class="cart_pointer">
                                <asp:Label ID="Label1" runat="server" Text="Total Cost:" CssClass="cart_details_pointer"></asp:Label></div><div class="cart_pointer">
                                <p>
                                     RM <asp:Label ID="lblTotalAfter" runat="server" Text="0" CssClass="cart_details_subtitle"></asp:Label>.00 </p></div></div></div><br />

                    <div class="cart_function ">
                        <asp:Button ID="btnCheckout" runat="server" OnClick="BtnCheckout_Click" Text="Checkout" CssClass="cart_btn"/>
                    </div>
                    <div class="cart_function ">
                        <asp:Button ID="btnClear" runat="server" OnClick="BtnClear_Click" Text="Clear" CssClass="cart_btn"/>
                    </div>

                </div>

            </section>
            <br />
            <br />
            <br />
            <br />
            <br />
            <p class="align_center">**********************************************************************************************</p>
             
            <!--------------------------Feedback-------------------->
            <section class="feedback section" id="contact">
                <h2 class="feedback_title">Feedback</h2>
                <p class="feedback_subtitle">If you have any Feedback or Special Order, Please leave a message to us</p>

                <div class="feedback_container container">
                    <div class="contact_information">
                        <div class="bakery_information">
                            <h3 class="information_title">Phone Number</h3>
                            <p class="information_subtitle">+60-12345678</p>
                        </div>
                        <div class="bakery_information">
                            <h3 class="information_title">Email Address</h3>
                            <p class="information_subtitle">pletbakery@plet.com</p>
                        </div>
                        <div class="bakery_information">
                            <h3 class="information_title">Our Outlets</h3>
                            <p class="information_subtitle">Selangor</p>
                        </div>
                    </div>

                    <div class="feedbackForm" id="feedbackForm">
                        <div class="form">
                            <div class="feedbackForm_container">
                                <div class="feedbackForm_details">
                                    <div class="feedback_content">
                                        <asp:Label ID="Label3" runat="server" Text="Name*" CssClass="feedbackForm_label"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="feedback_input" AutoCompleteType="FirstName"></asp:TextBox>                  
                                    </div>

                                    <div class="feedback_content">
                                        <asp:Label ID="Label4" runat="server" Text="Email Address" CssClass="feedbackForm_label"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="feedback_input" AutoCompleteType="Email" TextMode="Email"></asp:TextBox>   
                                    </div>

                                    <div class="feedback_content">
                                        <asp:Label ID="Label5" runat="server" Text="Phone Number*" CssClass="feedbackForm_label"></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="feedback_input" AutoCompleteType="Enabled" TextMode="Phone"></asp:TextBox>
                                    </div>

                                    <!--<div class="feedback_content">
                                        <asp:Label ID="Label6" runat="server" Text="Send To*" CssClass="feedbackForm_label"></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="feedback_input" AutoCompleteType="Disabled" TextMode="SingleLine"></asp:TextBox>
                                        
                                    </div>-->

                                    <div class="feedback_content">
                                        <asp:Label ID="Label7" runat="server" Text="Date" CssClass="feedbackForm_label"></asp:Label>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="feedback_input" AutoCompleteType="Disabled" TextMode="DateTimeLocal"></asp:TextBox>
                                        
                                    </div>
                                </div>

                                <div class="feedback_content">
                                    <asp:Label ID="Label8" runat="server" Text="Special Orders Comments/ Feedback" CssClass="feedbackForm_label"></asp:Label>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="content_input" AutoCompleteType="Disabled" Rows="8" TextMode="MultiLine"></asp:TextBox>
                                </div>

                                <div>
                                    <asp:Button ID="SubmitButton" runat="server" OnClick="BtnSubmit_Click" Text="SUBMIT" CssClass="feedbackForm_btn"/>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </section>

            <!--------------------------FOOTER-------------------->
            <footer class="footer" id="footer">
                <div class="footer_bg">
                    <div class="footer_container ">
                        <div class="footer_primary grid" id="aboutUs">
                            <div class="footer_primary_item">
                                <h3 class="footer_title">ABOUT P-LET BAKERY</h3>
                                <p class="footer_description">
                                    <span>P-LET Bakery is an Bakery Store that owned and operate by Pang Wei Rong, Low Wei Lin, 
                                Eric Tan Shing Li, and Teo Yin Yin. Currently, our Store is located at Selangor.
                               
                                    </span>
                                </p>
                            </div>

                            <div class="footer_primary_item">
                                <h3 class="footer_title">REMARK</h3>
                                <p class="footer_description">
                                    <span>This is the Group Assignment for the Programming Elective II (2). The course code is SWE310
                                and the Academic Sessions is 2021/09. The lecturer for this course Dr. Shaidah
                                Jusoh.
                                    </span>
                                </p>
                            </div>

                        </div>

                        <div class="footer_secondary">
                            <div class="footer_secondary_item">
                                <h3 class="footer_title">P-LET Bakery</h3>
                                <ul>
                                    <li>
                                        <a class="footer_secondary_description" href="#Main">About Us</a>
                                    </li>
                                    <li>
                                        <a class="footer_secondary_description" href="#menu">Our Menu</a>
                                    </li>
                                    <li>
                                        <a class="footer_secondary_description" href="#cart">Cart</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="footer_secondary_item">
                                <h3 class="footer_title">Social Media</h3>
                                <ul class=" contact">
                                    <li>
                                        <a href="#" class="footer_secondary_description">
                                            <img alt="Facebook" src="../Images/icon_fb.png" class="contact_icon" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="footer_secondary_description">
                                            <img alt="Instagram" src="../Images/icon_ig.png" class="contact_icon" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="footer_secondary_description">
                                            <img alt="Twitter" src="../Images/icon_tw.png" class="contact_icon" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="footer_secondary_item">
                                <h3 class="footer_title">Operation Hours</h3>
                                <div class="footer_secondary_description">
                                    Monday to Sunday: 9:00am to 9:00pm
                            <br />
                                    Close on Tuesday and public holidays.
                                </div>
                            </div>

                        </div>

                        <div class="footer_copyright">
                            <p>
                                Copyright &copy; 2021 by PLET BAKERY Sdn Bhd. All Rights Reserved.
                            </p>


                        </div>
                    </div>
                </div>
            </footer>

        </div>

        <script src="Resources/Bakery.js"></script>

            </div>
    </form>
</body>
</html>
