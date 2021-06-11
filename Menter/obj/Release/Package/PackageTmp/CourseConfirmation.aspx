<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CourseConfirmation.aspx.cs" Inherits="Menter.CourseConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container align-middle" >
        <div class="text-center">
            <h1>COURSE CONFIRMATION</h1>
            <asp:Label runat="server">Comment</asp:Label>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
