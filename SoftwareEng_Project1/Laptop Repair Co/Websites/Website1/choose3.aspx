<%@ Page Language="C#" AutoEventWireup="true" CodeFile="choose3.aspx.cs" Inherits="Default3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Homepage</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
	<div id="logo">
		<h1>Getting Reports</h1>
		<p>Manager Page</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#" class="active">You've Signed in</a></li>
			<li><a href="login3.aspx">Log Out</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		<div id="content">

		Welcome to the system Mr. Manager: 
		<br>
            <br><br><br>
		&nbsp; &nbsp;
		    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="Weekly Report" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Monthly Report" />
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                Text="Yearly Report" />
&nbsp;&nbsp;&nbsp;
		<br><br><br>
		</div>
		<div id="sidebar">
			
		Choose Report Type :<br> 
		    <asp:RadioButton ID="RadioButton1" runat="server" Text="Work Time" 
                GroupName="Report" Checked="True"/>
            &nbsp;<br>
		    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Report" 
                Text="Receives"/>
            &nbsp;<br>
            <br>
	

		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div>
    </form>
</body>
</html>