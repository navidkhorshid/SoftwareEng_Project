﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rlist.aspx.cs" Inherits="rlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Reception List</title>
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
                    <li><a href="rform.aspx">Reception Form</a></li>
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
        	
        &nbsp;<asp:GridView 
                ID="GridView1" runat="server" CellPadding="4" 
                ForeColor="#333333" GridLines="Vertical" 
                
                ShowHeaderWhenEmpty="True" AllowPaging="True" BorderStyle="Groove" 
                ShowFooter="True" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField HeaderText="Reception Code" DataField="rec_code" 
                        InsertVisible="False" ReadOnly="True" SortExpression="rec_code" />
                    <asp:BoundField HeaderText="Customer ID" DataField="cust_id" 
                        InsertVisible="False" ReadOnly="True" SortExpression="cust_id" />
                    <asp:BoundField HeaderText="Customer Name" DataField="cust_fname" 
                        SortExpression="cust_fname" />
                    <asp:BoundField HeaderText="Laptop Serial" DataField="lap_se" 
                        SortExpression="lap_se" />
                    <asp:BoundField HeaderText="Model" DataField="model" SortExpression="model" />
                    <asp:BoundField HeaderText="Customer Tel" DataField="cust_tel" 
                        SortExpression="cust_tel" />
                    <asp:BoundField HeaderText="Description" DataField="recep_desc" 
                        SortExpression="recep_desc" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                
                SelectCommand="SELECT receptions.rec_code, customers.cust_id, customers.cust_fname, laptop.lap_se, lap_models.model, customers.cust_tel, receptions.recep_desc FROM customers INNER JOIN laptop ON customers.lap_serial = laptop.lap_serial INNER JOIN lap_models ON laptop.lap_model = lap_models.mod_id INNER JOIN receptions ON laptop.lap_serial = receptions.lap_serial INNER JOIN receptionist ON receptions.recep_id = receptionist.recep_id WHERE (receptionist.recep_id = @rid)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="rid" SessionField="rid" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;</div>
        <div id="content_bottom"></div>
          
            <div id="footer"><center><h3><a href="http://www.facebook.com/intellidev">IntelliDev Page</a></h3></center></div>
            <div style="text-align: center; font-size: 0.75em;">Copyright © 2011 Intellidev - All Rights Reserved</div>
      </div>
   </div>
    </form>
    
</body>
</html>
