<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deliver.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Delivering</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="logo">
		<h1>Delivering an item</h1>
		<p>Operator Page</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="choose.aspx" >Home</a></li>
			<li><a href="#" class="active">Deliver</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		<div id="content">
		    <form id="form1" runat="server">
		    Choose Customer&nbsp; :
        <center>
            <asp:DropDownList ID="DropDownList1" runat="server" onload="DropDownList1_Load">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br /><br/>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Confirm" />
            &nbsp;</form>

		<br><br><br><br>
		</div>
		<div id="sidebar">
			
		<i><h3>Delivering The Laptop : Step 1</h3></i> <br>
	        

		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div></body>
</html>