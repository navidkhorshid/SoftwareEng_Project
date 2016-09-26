<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receive2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Receiving::Step 2</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
    <style type="text/css">
        .style2
        {
            width: 151px;
        }
    </style>
</head>
<body>
<div id="wrapper">
	<div id="logo">
		<h1>Receiving an item</h1>
		<p>Operator Page</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="choose.html" >Home</a></li>
			<li><a href="#" class="active">Receive</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		<div id="content">
		    <form id="form1" runat="server">
		
		<table border=0 align="left" colspadding="2" >
		<tr><td class="style2">
		Name </td><td>&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		</td></tr>
		<tr><td class="style2">
		Last Name</td><td>&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		</td></tr>
		<tr><td class="style2">
		    National ID Code</td><td>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
		</td></tr>
 
		<tr><td class="style2">	
		    TELEPHONE&nbsp;
		</td><td>
		        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		</td></tr>
 
		<tr><td class="style2">	
		    Mobile</td><td>
		&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
		</td></tr>
	
		<tr><td class="style2">
		    E-Mail</td><td>
		&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
		</td></tr>
		
		<tr><td class="style2">
		    Address
		</td><td>
		&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
		</td></tr>
		
		
 
		</table><br><br><br><br><br><br><br><br><br>

		<br>
		<hr>
		<br>
		
		<table border=0 align="left" colspadding="2" >
		
		<tr><td class="style2">	
		Company Name 
		</td><td>
		&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" onload="DropDownList1_Load">
                </asp:DropDownList>
		</td></tr>
		
				
 
		</table><br>
            <br />
            <br>

		<center>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="3rd Step" />
            </center>
		
 
 
		    </form>

		<br><br><br>
		</div>
		<div id="sidebar">
			
		1st step : Laptop Details  
		<i><h3>2nd step : Customer Info's</h3></i> <br>
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



		
	
		

