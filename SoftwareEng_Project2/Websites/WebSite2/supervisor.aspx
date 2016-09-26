<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supervisor.aspx.cs" Inherits="supervisor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Supervisor</title>
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
            	<li class="menuitem"><a href="#" class="active">Received Laptops</a></li>
                <li class="menuitem"><a href="#">Help</a></li>
                <li class="menuitem"><a href="#">News</a></li>
            </ul>
        </div>
        
        <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Links</h3>
                        
                <ul>
                    <li><a href="#" style="color:Yellow;">Received laptops</a></li>
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
        	
        	<img src="images/table.jpg" />
            <center><asp:Button ID="Button1" runat="server" Text="Open Item" Width="92px" 
                    onclick="Button1_Click"   /></center>
            
        	
        </div>
        <div id="content_bottom"></div>
          
            <div id="footer"><center><h3><a href="http://www.facebook.com/intellidev">IntelliDev Page</a></h3></center></div>
            <div style="text-align: center; font-size: 0.75em;">Copyright © 2011 Intellidev - All Rights Reserved</div>
      </div>
   </div>
    </form>
    
</body>
</html>
