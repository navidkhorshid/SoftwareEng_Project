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
                            ForeColor="#003399" Height="200px" Width="220px" 
                            onselectionchanged="Calendar2_SelectionChanged">
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
                                ForeColor="#003399" Height="200px" Width="220px" 
                                onselectionchanged="Calendar3_SelectionChanged">
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
                        <asp:TextBox ID="TextBox1" runat="server" Width="219px" Enabled="False"></asp:TextBox>
                    </td>
                    <td class="style8" style="text-align:center">
                       To</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="221px" Enabled="False"></asp:TextBox>
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
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="LinqDataSource1" DataTextField="st_lname" DataValueField="st_id">
                        </asp:DropDownList>
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                            ContextTypeName="DataClassesDataContext" EntityTypeName="" 
                            Select="new (st_id, st_fname, st_lname)" TableName="staffs">
                        </asp:LinqDataSource>
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
                        <asp:Button ID="Button1" runat="server" Text="Show The Reports" 
                            onclick="Button1_Click" />
                        <br />
                    </td>
                
                </tr>
            </table>



            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                Visible="False" AutoGenerateColumns="False" CellPadding="4" 
                ForeColor="#333333" GridLines="None" AllowPaging="True" 
                AllowSorting="True" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="st_id" HeaderText="st_id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="st_id" />
                    <asp:BoundField DataField="st_fname" HeaderText="st_fname" 
                        SortExpression="st_fname" />
                    <asp:BoundField DataField="st_lname" HeaderText="st_lname" 
                        SortExpression="st_lname" />
                    <asp:BoundField DataField="rec_code" HeaderText="rec_code" 
                        SortExpression="rec_code" />
                    <asp:BoundField DataField="lapprob_finishtime" HeaderText="lapprob_finishtime" 
                        SortExpression="lapprob_finishtime" />
                    <asp:BoundField DataField="prob_title" HeaderText="prob_title" 
                        SortExpression="prob_title" />
                    <asp:BoundField DataField="prob_point" HeaderText="prob_point" 
                        SortExpression="prob_point" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                
                SelectCommand="SELECT staff.st_id, staff.st_fname, staff.st_lname, receptions.rec_code, lap_prob.lapprob_finishtime, Problems.prob_title, Problems.prob_point FROM st_form INNER JOIN staff ON st_form.st_id = staff.st_id INNER JOIN receptions ON st_form.rec_code = receptions.rec_code INNER JOIN laptop ON receptions.lap_serial = laptop.lap_serial INNER JOIN lap_prob ON laptop.lap_serial = lap_prob.lap_serial INNER JOIN Problems ON lap_prob.prob_id = Problems.prob_id WHERE (staff.st_id = @stid) AND (lap_prob.lapprob_finishtime &gt;= @t1) AND (lap_prob.lapprob_finishtime &lt;= @t2) AND (lap_prob.lapprob_fix = 1)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="stid" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Calendar2" Name="t1" 
                        PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar3" Name="t2" 
                        PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" 
                Visible="False" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="st_id" ForeColor="#333333" GridLines="None" 
                AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="st_id" HeaderText="st_id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="st_id" />
                    <asp:BoundField DataField="st_fname" HeaderText="st_fname" 
                        SortExpression="st_fname" />
                    <asp:BoundField DataField="st_lname" HeaderText="st_lname" 
                        SortExpression="st_lname" />
                    <asp:BoundField DataField="rec_code" HeaderText="rec_code" 
                        SortExpression="rec_code" />
                    <asp:BoundField DataField="lapprob_finishtime" HeaderText="lapprob_finishtime" 
                        SortExpression="lapprob_finishtime" />
                    <asp:BoundField DataField="prob_title" HeaderText="prob_title" 
                        SortExpression="prob_title" />
                    <asp:BoundField DataField="prob_point" HeaderText="prob_point" 
                        SortExpression="prob_point" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:OTAConnectionString %>" 
                SelectCommand="SELECT staff.st_id, staff.st_fname, staff.st_lname, st_form.rec_code, lap_prob.lapprob_finishtime, Problems.prob_title, Problems.prob_point FROM laptop INNER JOIN lap_prob ON laptop.lap_serial = lap_prob.lap_serial INNER JOIN Problems ON lap_prob.prob_id = Problems.prob_id INNER JOIN receptions ON laptop.lap_serial = receptions.lap_serial INNER JOIN st_form ON receptions.rec_code = st_form.rec_code INNER JOIN staff ON st_form.st_id = staff.st_id WHERE (lap_prob.lapprob_fix = 1) AND (lap_prob.lapprob_finishtime &gt;= @t1 AND lap_prob.lapprob_finishtime &lt;= @t2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar2" Name="t1" 
                        PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="Calendar3" Name="t2" 
                        PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>


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
