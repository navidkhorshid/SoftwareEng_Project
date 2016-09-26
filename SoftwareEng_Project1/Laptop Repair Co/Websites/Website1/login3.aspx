<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login3.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Operator Log-in</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
<div id="wrapper">
	<div id="logo">
		<h1>Log-In</h1>
		<p>Work Order</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="index.html" >Homepage</a></li>
			<li><a href="login.aspx">Operators Login Page</a></li>
			<li><a href="login2.aspx" >Supervisors Login Page</a>&nbsp;&nbsp;&nbsp; </li>
			<li><a href="#" class="active">Manager Login Page</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		<div id="content">

		    <form id="form1" method="get" runat="server">
		Enter Your Username And Password For Entering The System <br><br>
		UserName :
		<asp:textbox id="username"   size="18" runat="server" />
		<br/><br/>
		Password :
		<asp:textbox id="password"  size="20" runat="server" TextMode="Password" />
		<br/><br/>
        <center>
            <asp:Button ID="Button1" runat="server"  Text="Submit" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            <br/><br/><br />
		</center>
		<br/>
        <br/><br/><br/><br/>
		    </form>
		</div>
		<div id="sidebar">
		<h4>Intensive Customer Care</h4>
	The Engineer who is carrying out your laptop repair is only a free phone call away. He will gladly answer any question or concerns that you may have and if needed, will contact you with any questions regarding the wellbeing of your laptop repair.

	We guarantee that should the unit fail with the same fault within 3 months of us returning the unit to you, we will collect, repair and return the unit to you at no cost to you 
		
		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div></body>
</html>

