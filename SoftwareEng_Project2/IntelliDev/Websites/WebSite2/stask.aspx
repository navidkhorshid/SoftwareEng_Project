<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stask.aspx.cs" Inherits="stask" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Tasks</title>
    <style type="text/css">
        .style6
        {
            width: 517px;
        }
        .style7
        {
            width: 211px;
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



&nbsp;<table style="width:100%;">
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td></tr>
                <tr>
                    <td class="style6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                            onrowcommand="GridView1_RowCommand">

                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="prob_id" HeaderText="prob_id" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="prob_id" />
                                <asp:BoundField DataField="prob_title" HeaderText="prob_title" 
                                    SortExpression="prob_title" />
                                <asp:BoundField DataField="lap_model" HeaderText="lap_model" 
                                    SortExpression="lap_model" />
                                <asp:BoundField DataField="lap_se" HeaderText="lap_se" 
                                    SortExpression="lap_se" />
                                <asp:BoundField DataField="rec_code" HeaderText="rec_code" 
                                    SortExpression="rec_code" />
                                <asp:BoundField DataField="sup_desc" HeaderText="sup_desc" 
                                    SortExpression="sup_desc" />
                                <asp:BoundField DataField="st_lasttime" HeaderText="st_lasttime" 
                                    SortExpression="st_lasttime" />
                                <asp:TemplateField HeaderText="Start/Finish" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server"  
                                            CommandName="starttask" Text="Start Task" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Start/Finish" ShowHeader="False" >
                                    <ItemTemplate>
                                        <asp:Button ID="Button2" runat="server"  
                                            CommandName="finishtask" Text="Finish Task" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>'/>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                        <table style="width: 127%;">
                            <tr>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    Staff Descriptions</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="54px" 
                                        TextMode="MultiLine" Width="218px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                            
                            SelectCommand="SELECT Problems.prob_id, Problems.prob_title, laptop.lap_model, laptop.lap_se, receptions.rec_code, sup_form.sup_desc, st_form.st_lasttime FROM lap_models INNER JOIN laptop ON lap_models.mod_id = laptop.lap_model INNER JOIN lap_prob ON laptop.lap_serial = lap_prob.lap_serial INNER JOIN Problems ON lap_prob.prob_id = Problems.prob_id INNER JOIN receptions ON laptop.lap_serial = receptions.lap_serial INNER JOIN st_form ON receptions.rec_code = st_form.rec_code INNER JOIN sup_form ON receptions.rec_code = sup_form.rec_code WHERE (lap_prob.lapprob_finishtime IS NULL) AND (st_form.st_id = @st_id)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="" Name="st_id" SessionField="stid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                        
                        <br />
                        
                        
                    </td>
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
