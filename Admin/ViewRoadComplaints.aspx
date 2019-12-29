﻿<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/Admin/AdminMaster.master" CodeFile="ViewRoadComplaints.aspx.cs" Inherits="Admin_ViewRoadComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .auto-style1 {
            color: #990000;
            text-align: center;
        }
        .auto-style2 {}
    </style>

    </asp:Content>
   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <br/>
    <br/>
    <br/>
    <br />
 <div>
    
<h1 class="auto-style1"><em>Road Complaints</em></h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" Width="1070px"  BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="complaintId" HeaderText="ComplaintId" SortExpression="complaintId" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Registerdatetime" HeaderText="Registration Date And Time" SortExpression="Registerdatetime" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Cname" HeaderText="Citizen Name" SortExpression="Cname" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Complaintsdetails" HeaderText="Complaints Details" SortExpression="Complaintsdetails" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ComplaintAddress" HeaderText="Complaint Address" SortExpression="ComplaintAddress" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="CompalintImage"  HeaderText="Complaint Image">
                </asp:ImageField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Replay Option">
                    <ItemTemplate>
                        <asp:Button ID="BtnReplay" runat="server" BackColor="#009933" CommandArgument='<%# Eval("complaintId")%>' CssClass="auto-style2" ForeColor="Black" Height="28px" OnClick="BtnReplay_Click" Text="Replay" Width="103px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CRWAConnectionString %>" SelectCommand="SELECT * FROM [RoadComplaint] ORDER BY [complaintId]">
        </asp:SqlDataSource>
    
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
      <br />
          <br />
          <br />
        
    </div>
  </asp:Content>
