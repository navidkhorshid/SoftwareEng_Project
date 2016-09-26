<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mreport.aspx.cs" Inherits="mreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Reports</title>
    <style type="text/css">
        .style1
        {
            height: 20px;
            width: 168px;
        }
        .style2
        {
            height: 20px;
            width: 162px;
        }
        .style3
        {
            width: 162px;
        }
        .style6
        {
            width: 168px;
        }
        .style7
        {
            height: 20px;
            width: 148px;
        }
        .style8
        {
            width: 148px;
        }
        .style9
        {
            height: 20px;
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
            	<li class="menuitem"><a href="Manager.aspx">Home</a></li>
                <li class="menuitem"><a href="#">Help</a></li>
                <li class="menuitem"><a href="#">News</a></li>
            </ul>
        </div>
        
        <div id="leftmenu">

        <div id="leftmenu_top"></div>

				<div id="leftmenu_main">    
                
                <h3>Links</h3>
                        
                <ul>
                    <li><a href="Manager.aspx">Manager Home</a></li>
                    <li><a href="mdiagram.aspx">Diagram</a></li>
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
        &nbsp;<table style="width:100%;">
                <tr>
                    <td class="style2">
                        Date :</td>
                    <td class="style1">
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                            ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                                Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        </td>
                    <td class="style7">
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar3" runat="server" BackColor="White" 
                                BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                                ForeColor="#003399" Height="200px" Width="220px">
                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                                    Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                    </td>
                
                </tr>
                
                
                <tr>
                    <td class="style3">
                        From</td>
                    <td class="style6">
                        <asp:TextBox ID="TextBox1" runat="server" Width="219px"></asp:TextBox>
                    </td>
                    <td class="style8" style="text-align:center">
                       To</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                    </td>
                
                </tr>
                <tr>
                    <td class="style2">
                        </td>
                    <td class="style1">
                        <br />
                        <br />
                        <br />
                        </td>
                    <td class="style7">
                        &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                
                </tr>
                <tr>
                    <td class="style3">
                        Staff Name</td>
                    <td class="style6">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="style8">
                        Or</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="All Staff" />
                    </td>
                
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                <td>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Show The Reports" />
                    </td>
                
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
