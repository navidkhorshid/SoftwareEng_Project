<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rform.aspx.cs" Inherits="rform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Reception Form</title>
    <style type="text/css">
        .style1
        {
            width: 295px;
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
            	<li class="menuitem"><a href="receptionist.aspx">Home</a></li>
                <li class="menuitem"><a href="#">Help</a></li>
                <li class="menuitem"><a href="#">News</a></li>
            </ul>
        </div>
        
        <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Links</h3>
                        
                <ul>
                    <li><a href="receptionist.aspx">Reception Home</a></li>
                    <li><a href="rlist.aspx">Reception list</a></li>
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
        	
        &nbsp;<table style="width:100%; border:0px;" >
                <tr>
                    <td class="style1">
                        Reception Code</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" EnableTheming="True" 
                            ReadOnly="True">98334441</asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Customer Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Customer Lastname</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                
                <tr>
                    <td class="style1">
                        Laptop Serial</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Laptop Model</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="model" DataValueField="model">
                            
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                            SelectCommand="SELECT [model] FROM [lap_models]"></asp:SqlDataSource>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Contact Tel.</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        Description</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="style1" >
                      </td>
                
                <td class="style1" >
                        <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" /></td>
                
                <td class="style1" >
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
