<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manager Report Page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
	<div id="logo">
		<h1>Reports</h1>
		<p>Manager Page</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#" class="active">You've Signed in</a></li>
			<li><a href="choose3.aspx">Back To Report Types</a></li>
            <li><a href="login3.aspx">Log Out</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" Height="477px" Width="893px">
        </asp:ListBox>
        <br />
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