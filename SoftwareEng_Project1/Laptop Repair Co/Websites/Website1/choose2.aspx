<%@ Page Language="C#" AutoEventWireup="true" CodeFile="choose2.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Supervisor Homepage</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
<div id="wrapper">
	<div id="logo">
		<h1>Set Work Time</h1>
		<p>Supervisor Page</p>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#" class="active">You've Signed in</a></li>
			<li><a href="login2.aspx">Log Out</a></li>
			
		</ul>
	</div>
	<div id="header">&nbsp;</div>
	<div id="page">
		<div id="content">

		 As The supervisor, please enter the work times below :
		<br><br><br>
		    <form id="form1" runat="server">
		Select MR Code: 
		<center>
		&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
                onload="DropDownList1_Load">
        </asp:DropDownList>
		</center>
		<br>
		    Select Technician: <center>

                <asp:DropDownList ID="DropDownList2" runat="server" 
                    onload="DropDownList2_Load" >
                </asp:DropDownList>
                
            </center><br>
		Work Time (Minute) : <center>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </center>
            <br />
            <br />
&nbsp;<br>
		<center>
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </center>
		    
		</div>
		<div id="sidebar">
            
		    You can insert a finish date for a single MR Code. If so you won&#39;t be able to 
            charge working hours anymore for that MR Code until the end of that day. a 
            laptop can be deliver to a customer only if its MR Code&#39;s Finish Date has been 
            passed. <h3>Select MR Code and Finish Date</h3>
            <p>
            
        <asp:DropDownList ID="DropDownList3" runat="server" 
                onload="DropDownList3_Load">
        </asp:DropDownList>
		    </p>
            <p>
                <asp:TextBox ID="TextBox2" runat="server" Width="28px"></asp:TextBox>
&nbsp; /&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Width="28px"></asp:TextBox>
&nbsp; /
                <asp:TextBox ID="TextBox4" runat="server" Width="51px"></asp:TextBox>
&nbsp;&nbsp; (M/D/Y)</p>
            <p>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Set Finish Date" />
            </form>
            </p><i>

		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div id="footer">
		<p>&copy;&nbsp;Yazdanparast, Shamsizadeh, Zargarzadeh, khakbazi, Iloukhani </p>
	</div>
</div>
<div style="text-align: center; font-size: 0.75em;">Software Engineering group</div></body>
</html>
