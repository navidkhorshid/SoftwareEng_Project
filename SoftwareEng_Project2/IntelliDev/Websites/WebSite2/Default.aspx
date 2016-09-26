<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Laptop Repair Homepage</title>

</head>

<body>
    <form id="form1" runat="server">
<div id="container">
		<div id="header">
        	<h1>Intelli<span class="off">Dev</span></h1>
            <h2>Engineering Inc.</h2>
        </div>   
        
        <div id="menu">
        	<ul>
            	<li class="menuitem"><a href="default.aspx">Homepage</a></li>
                <li class="menuitem"><a href="#">About</a></li>
              <li class="menuitem"><a href="#">Contact</a></li>
            </ul>
        </div>
        
        <div id="leftmenu" style="float:right" >

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Login</h3>
                    
                    <asp:Login ID="Login1" runat="server" BorderPadding="6" BorderStyle="Groove" 
                        PasswordLabelText="Password" TextLayout="TextOnTop" TitleText="" 
                        UserNameLabelText="User Name" Width="150px" LoginButtonText="Submit" 
                        onauthenticate="Login1_Authenticate"  >
                    </asp:Login>
                    
                    <asp:RadioButton ID="staff"  GroupName="type" runat="server" Text="Staff" 
                        Checked="True"  /><br />
                    <asp:RadioButton ID="supervisor" GroupName="type" runat="server" Text="Supervisor" /><br />
                    <asp:RadioButton ID="receptionist" GroupName="type" runat="server" Text="Receptionist" /><br />
                    <asp:RadioButton ID="manager" GroupName="type" runat="server" Text="Manager" /><br />
                    <br />
                    <h3>Calendar</h3>
                    
                    
                    <hr />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    
                    
</div>
                
                
              <div id="leftmenu_bottom"></div>
        </div>
        
        
        
        
		<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        
        <img src="images/silver.jpg" />
        
        </div>
        <div id="content_bottom"></div>
          
            <div id="footer"><center><h3><a href="http://www.facebook.com/intellidev">IntelliDev Page</a></h3></center></div>
            <div style="text-align: center; font-size: 0.75em;">Copyright © 2011 Intellidev - All Rights Reserved</div>
      </div>
   </div>
   
   
    </form>
   
   
</body>
</html>
