<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stask.aspx.cs" Inherits="stask" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Tasks</title>
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
        .style2
        {
            height: 20px;
            width: 171px;
        }
        .style3
        {
            width: 171px;
        }
        .style4
        {
            height: 20px;
            width: 130px;
        }
        .style5
        {
            width: 130px;
        }
        .style6
        {
            width: 290px;
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
            	<li class="menuitem"><a href="staff.aspx">Home</a></li>
                <li class="menuitem"><a href="#">Help</a></li>
                <li class="menuitem"><a href="#">News</a></li>
            </ul>
        </div>
        
        <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Links</h3>
                        
                <ul>
                    <li><a href="staff.aspx">Leave Your Task</a></li>
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
        <center>
            <table style="width:100%;">
                <tr>
                    <td class="style2">
                        Laptop ID</td>
                    <td class="style4">
                        Laptop Model</td>
                    <td class="style1">
                        Reception Code</td>
                </tr>
                <tr>
                    <td class="style3">
                        9833</td>
                    <td class="style5">
                        Sony-NS140</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="98334441"></asp:Label>
                    </td>
                </tr>
                
            </table>



&nbsp;<table style="width:100%;">
                <tr>
                    <td class="style6">
                        Problem List :</td>
                    <td>
                        Sup. Desc :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Staff Desc.</tr>
                <tr>
                    <td class="style6">
                        <asp:ListBox ID="ListBox1" runat="server" Width="171px">
                            <asp:ListItem Value="Ram" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="H.D.D"></asp:ListItem>
                        </asp:ListBox>
                        <asp:ImageButton ImageUrl="~/images/Check.jpg" ID="ImageButton1" runat="server" 
                            Height="47px" Width="47px" />
                            <asp:ImageButton ImageUrl="~/images/cross.jpg" ID="ImageButton2" runat="server" 
                            Height="47px" Width="47px" />
                        
                    </td>
                    <td>
                        <textarea id="TextArea1" cols="15" name="TextArea1" rows="4"></textarea><textarea 
                            id="TextArea2" cols="15" name="TextArea2" rows="4"></textarea></td>
                    
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    
                </tr>
            </table>
            </center>	
        </div>
        <div id="content_bottom"></div>
          
            <div id="footer"><center><h3><a href="http://www.facebook.com/intellidev">IntelliDev Page</a></h3></center></div>
            <div style="text-align: center; font-size: 0.75em;">Copyright © 2011 Intellidev - All Rights Reserved</div>
      </div>
   </div>
    </form>
    
</body>
</html>
