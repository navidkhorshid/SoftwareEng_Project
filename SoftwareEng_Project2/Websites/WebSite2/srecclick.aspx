<%@ Page Language="C#" AutoEventWireup="true" CodeFile="srecclick.aspx.cs" Inherits="srecclick" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Received laptops details</title>
    <style type="text/css">
        .style1
        {
            width: 139px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
<div id="container">
		<div id="header">
        	<h1>Intelli<span class="off">Dev</span></h1>
            <a href = "Default.aspx"><h2>Log Out</h2></a>
        </div>   
        
        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="supervisor.aspx">Received Laptops</a></li>
                <li class="menuitem"><a href="#">Help</a></li>
                <li class="menuitem"><a href="#">News</a></li>
            </ul>
        </div>
        
        <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Links</h3>
                        
                <ul>
                    <li><a href="supervisor.aspx">Received laptops</a></li>
                    <li><a href="sfix.aspx">Fixed laptops</a></li>
              
                </ul>
                <br />
                <h3>Top 3</h3>
                        <br /><br /><br /><br />
                        <hr />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                
</div>
                
                
              <div id="leftmenu_bottom"></div>
        </div>
        
        
        
        
		<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        	
        	&nbsp;<table style="width:100%;">
                <tr>
                    <td class="style1">
                        Reception Code</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="98334441"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Laptop Model</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Sony NS-140"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Problem List</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="H.D.D"></asp:ListItem>
                            <asp:ListItem Value="RAM"></asp:ListItem>
                            <asp:ListItem Value="LCD"></asp:ListItem>
                            <asp:ListItem Value="Battery"></asp:ListItem>
                            <asp:ListItem Value="Keyboard"></asp:ListItem>
                            <asp:ListItem Value="Motherboard"></asp:ListItem>
                            <asp:ListItem Value="Ports"></asp:ListItem>
                            <asp:ListItem Value="Touchpad"></asp:ListItem>
                            <asp:ListItem Value="Speaker"></asp:ListItem>
                            <asp:ListItem Value="Modem"></asp:ListItem>
                            <asp:ListItem Value="LAN Card"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Sup. Desc</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server">Need a new RAM</asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Detected Problem(s)</td>
                    <td>
                            <asp:ImageButton ImageUrl="~/images/cross.jpg" ID="ImageButton2" runat="server" 
                            Height="47px" Width="47px" />
                        
                    &nbsp;&nbsp;
                        <asp:ListBox ID="ListBox1" runat="server" Rows="7" Width="237px">
                            <asp:ListItem Value="RAM"></asp:ListItem>
                            <asp:ListItem Value="H.D.D"></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                    </td>
                    
                </tr>
                
                <tr>
                <td>

                    &nbsp;</td>
                <td>

                    <asp:Button ID="Button2" runat="server" Text="Submit" />

                </td>
                
                </tr>
            </table>
            </div>
        <div id="content_bottom"></div>
          
            <div id="footer"><center><h3><a href="http://www.facebook.com/intellidev">IntelliDev Page</a></h3></center></div>
            <div style="text-align: center; font-size: 0.75em;">Copyright © 2011 Intellidev - All Rights Reserved</div>
      </div>
   </div>
    </form>
    
</body>
</html>
