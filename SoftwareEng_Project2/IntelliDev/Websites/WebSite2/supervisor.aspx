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
        	
        	<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="234px" 
                Width="350px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="rec_code" HeaderText="Rec. Code" 
                        InsertVisible="False" ReadOnly="True" SortExpression="rec_code" />
                    <asp:BoundField DataField="recep_id" HeaderText="Recep. ID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="recep_id" />
                    <asp:BoundField DataField="recep_lname" HeaderText="Name" 
                        SortExpression="recep_lname" />
                    <asp:BoundField DataField="recep_tel" HeaderText="Tel." 
                        SortExpression="recep_tel" />
                    <asp:BoundField DataField="recep_desc" HeaderText="Desc." 
                        SortExpression="recep_desc" />
                    <asp:BoundField DataField="rec_date" HeaderText="Date" 
                        SortExpression="rec_date" />
                    <asp:BoundField DataField="lap_serial" HeaderText="Laptop ID" 
                        SortExpression="lap_serial" />
                    <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                    <asp:BoundField DataField="cust_id" HeaderText="Customer ID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="cust_id" />
                    <asp:BoundField DataField="cust_lname" HeaderText="Name" 
                        SortExpression="cust_lname" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                
                SelectCommand="SELECT receptions.rec_code, receptionist.recep_id, receptionist.recep_lname, receptionist.recep_tel, receptions.recep_desc, receptions.rec_date, laptop.lap_serial, lap_models.model, customers.cust_id, customers.cust_lname FROM customers INNER JOIN laptop ON customers.lap_serial = laptop.lap_serial INNER JOIN receptions ON laptop.lap_serial = receptions.lap_serial INNER JOIN receptionist ON receptions.recep_id = receptionist.recep_id INNER JOIN lap_models ON laptop.lap_model = lap_models.mod_id INNER JOIN lap_prob ON laptop.lap_serial = lap_prob.lap_serial WHERE (lap_prob.prob_id IS NULL)">
            </asp:SqlDataSource>
&nbsp;<center><asp:Button ID="Button1" runat="server" Text="Open Item" Width="92px" 
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
