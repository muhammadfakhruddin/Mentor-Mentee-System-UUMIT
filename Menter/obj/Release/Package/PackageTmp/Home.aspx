<%@ Page Title="Home" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Menter.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container">
        <div class="text-center"><h1>Welcome To Mentor Mentee</h1></div>
        <a>This Is Mentor Mentee Web Page</a>
        <br />
        <a>You are,</a>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
    </div>
</asp:Content>
