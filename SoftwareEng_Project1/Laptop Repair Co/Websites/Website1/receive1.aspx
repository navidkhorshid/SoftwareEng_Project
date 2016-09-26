<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receive1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Receiving::Step 1</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="logo">
		<h1>Receiving an Item</h1>
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
            <br />
            Laptop Brand&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Laptop Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
&nbsp;<br />
            Laptop Serial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Laptop Guaranty Remaining Time&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp; (Month)<br><br>
		    <br><br>
		<center>
		<asp:button id="button1" text="2nd Step" runat="server" onclick="Button1_Click"/><br>
		</center>
		    </form>

		<br><br><br><br><br><br><br>
		</div>
		<div id="sidebar">
			
		<i><h3>1st step : Laptop Detailslsils</h3></i> <br>
		2nd step : Customer Info's <br>
		3rd step : Repair Type <br>
	

		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div></body>
</html>



		
	
		

