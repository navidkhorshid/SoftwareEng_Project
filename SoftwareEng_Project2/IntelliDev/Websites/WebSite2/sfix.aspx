<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sfix.aspx.cs" Inherits="sfix" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Fixed Laptops</title>
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
                    <li><a href="supervisor.aspx" >Received laptops</a></li>
                    <li><a href="#" style="color:Yellow;">Fixed laptops</a></li>
              
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
        	


        	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
                AllowSorting="True" DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="rec_code" HeaderText="rec_code" 
                        SortExpression="rec_code" />
                    <asp:BoundField DataField="lap_serial" HeaderText="lap_serial" 
                        SortExpression="lap_serial" />
                    <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                    <asp:BoundField DataField="prob_title" HeaderText="prob_title" 
                        SortExpression="prob_title" />
                    <asp:BoundField DataField="prob_time" HeaderText="prob_time" 
                        SortExpression="prob_time" />
                    <asp:BoundField DataField="lapprob_starttime" HeaderText="lapprob_starttime" 
                        SortExpression="lapprob_starttime" />
                    <asp:BoundField DataField="lapprob_finishtime" HeaderText="lapprob_finishtime" 
                        SortExpression="lapprob_finishtime" />
                    <asp:BoundField DataField="st_id" HeaderText="st_id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="st_id" />
                    <asp:BoundField DataField="st_lname" HeaderText="st_lname" 
                        SortExpression="st_lname" />
                    <asp:BoundField DataField="st_desc" HeaderText="st_desc" 
                        SortExpression="st_desc" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="accept" 
                                Text="Accept" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="deny" 
                                Text="Deny" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        	
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                
                
                SelectCommand="SELECT receptions.rec_code, laptop.lap_serial, lap_models.model, Problems.prob_title, Problems.prob_time, lap_prob.lapprob_starttime, lap_prob.lapprob_finishtime, staff.st_id, staff.st_lname, st_form.st_desc FROM st_form INNER JOIN staff ON st_form.st_id = staff.st_id INNER JOIN receptions ON st_form.rec_code = receptions.rec_code INNER JOIN sup_form ON receptions.rec_code = sup_form.rec_code INNER JOIN laptop ON receptions.lap_serial = laptop.lap_serial INNER JOIN lap_prob ON laptop.lap_serial = lap_prob.lap_serial INNER JOIN Problems ON lap_prob.prob_id = Problems.prob_id INNER JOIN lap_models ON laptop.lap_model = lap_models.mod_id WHERE (sup_form.sup_id = @sid) AND (lap_prob.lapprob_finishtime IS NOT NULL) AND (lap_prob.lapprob_fix = 0)">
                <SelectParameters>
                    <asp:SessionParameter Name="sid" SessionField="supid" />
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
