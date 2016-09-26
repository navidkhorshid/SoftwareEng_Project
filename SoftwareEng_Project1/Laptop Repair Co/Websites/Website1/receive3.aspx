<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receive3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Receiving::Step 3</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="logo">
		<h1>Receiving an item</h1>
		<p>Operator Page</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="choose.aspx" >Home</a></li>
			<li><a href="#" class="active">Receive</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		<div id="content">
		    <form id="form1" runat="server">
		
		<table border=0 align="left" colspadding="2" >
		
		<tr><td>
		&nbsp;Choose The Problem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		</td><td>
		&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" onload="DropDownList1_Load">
                </asp:DropDownList>

		</td></tr>
		</table>
		<br><br><br><br>
		
		<center>
		&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Get MR Code" />
		</center>
            </form>

		<br><br><br><br><br><br><br>
		</div>
		<div id="sidebar">
			
		1st step : Laptop Details<br>
		2nd step : Customer Info's <br>
		<i><h3>3rd step : Repair Type</h3></i>
	

		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div></body>
</html>



		
	
		

