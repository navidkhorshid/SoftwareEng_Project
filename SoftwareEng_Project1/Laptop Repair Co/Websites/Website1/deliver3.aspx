<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deliver3.aspx.cs" Inherits="_Default" %>

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
		    Customer and laptop details :<br />
            <br />
            Laptop details
        <center>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label><br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br/>
            <center />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                <br />
                <hr>Problem Solved<br />
                <br />
                <asp:Label ID="Label5" runat="server"></asp:Label>
                <br />
                <br>
		        <hr><center>
                    Customer&#39;s Info
                    <br />
                    <br />
                <asp:Label ID="Label6" runat="server"></asp:Label>
                    <br />
                <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <br />
                    <hr>
                    The Delegate Of<br />
                    <br />
                <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                <asp:Label ID="Label11" runat="server"></asp:Label>
                    <br />
                <asp:Label ID="Label12" runat="server"></asp:Label>
                    <br />
                <asp:Label ID="Label13" runat="server"></asp:Label>
                    <br />
                </center>&nbsp;<br>
            <asp:Button ID="Button1" runat="server" Text="Deliver to Customer" 
                    onclick="Button1_Click" />
                <br>
                <center><center/><br>
		

		<center>
		&nbsp;
		</center>
		    </form>
            <br>
		</div>
		<div id="sidebar">
			
		<i><h3>Delivering The Laptop : Step 3</h3></i> <br>
	        

		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div></body>
</html>