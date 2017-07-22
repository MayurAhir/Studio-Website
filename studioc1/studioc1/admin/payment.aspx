<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="admin_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="transactionid" HeaderText="transactionid" 
            SortExpression="transactionid" />
        <asp:BoundField DataField="paymentprovider" HeaderText="paymentprovider" 
            SortExpression="paymentprovider" />
        <asp:BoundField DataField="paymentrate" HeaderText="paymentrate" 
            SortExpression="paymentrate" />
        <asp:BoundField DataField="loginid" HeaderText="loginid" 
            SortExpression="loginid" />
        <asp:BoundField DataField="fromaccno" HeaderText="fromaccno" 
            SortExpression="fromaccno" />
        <asp:BoundField DataField="frombankname" HeaderText="frombankname" 
            SortExpression="frombankname" />
        <asp:BoundField DataField="toaccno" HeaderText="toaccno" 
            SortExpression="toaccno" />
        <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" 
            SortExpression="paymentmode" />
        <asp:BoundField DataField="paymentnote" HeaderText="paymentnote" 
            SortExpression="paymentnote" />
        <asp:BoundField DataField="dateofpayment" HeaderText="dateofpayment" 
            SortExpression="dateofpayment" />
        <asp:BoundField DataField="statse" HeaderText="statse" 
            SortExpression="statse" />
        <asp:BoundField DataField="isactive" HeaderText="isactive" 
            SortExpression="isactive" />
        <asp:BoundField DataField="isdelete" HeaderText="isdelete" 
            SortExpression="isdelete" />
        <asp:BoundField DataField="eventid" HeaderText="eventid" 
            SortExpression="eventid" />
        <asp:BoundField DataField="packageid" HeaderText="packageid" 
            SortExpression="packageid" />
    </Columns>
    </asp:GridView>
</form>
    
</asp:Content>

