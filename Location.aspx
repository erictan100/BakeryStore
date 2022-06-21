<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="PLET_Bakery.Location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="Location.css">
  
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class= "container">
			<div class="details">
				<ul>
					<li>
						<a href="#">
						  <span class = "title"><h2>PLET Bakery</h2></span>
						</a>
					</li>
					
					<li>
						<img src="https://scontent.fkul2-3.fna.fbcdn.net/v/t39.30808-6/241246982_4173903532708955_5928924465386286626_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=DZX5_3OfUfYAX-CMg3H&_nc_ht=scontent.fkul2-3.fna&oh=00_AT-MXesMbscBV70CIjUqIrsQdH_Hb8NpxUizuK-elJ7tNA&oe=61D01D6A" />
					</li>

					<li>
						<a>
						<span class ="icon"><i class="fa fa-location-arrow" aria-hidden="true"></i></span>
						<p>Jalan Sunsuria, Bandar Sunsuria, 43900 Sepang, Selangor</p>
						
						</a>
					</li>
					<li>
						<a>
						<span class ="icon"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
						<p>Opens from 9am - 6pm daily</p>
						</a>
					</li>

					<li>
						<a>
						<span class ="icon"><i class="fa fa-phone" aria-hidden="true"></i></span>
						<p>06-123456789</p>
						</a>
					</li>
					
					<li>
						<a href="PLET_MainPage.aspx">
						  <span class ="icon"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
						  <span class = "title">Back</span>
						</a>
					</li>
				</ul>
			</div>

			<div class="main">
			
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.9440874000534!2d101.7047863147566!3d2.8324250979368104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdc77dffa92899%3A0x25b5e828613a7db9!2sXiamen%20University%20Malaysia!5e0!3m2!1sen!2smy!4v1640699690147!5m2!1sen!2smy" width="1500" height="800" style="border: 0;" allowfullscreen="true" loading="lazy"></iframe>
			
			</div>
		</div>
    </form>
</body>
</html>
