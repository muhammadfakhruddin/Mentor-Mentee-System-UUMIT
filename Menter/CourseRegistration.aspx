<%@ Page Title="Course Registration" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CourseRegistration.aspx.cs" Inherits="Menter.CourseRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container align-middle" >
        <div class="text-center">
            <h1>COURSE REGISTRATION</h1>
            <asp:Label ID="Label" runat="server" Text="Register Course"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="CourseCode"  ></asp:TextBox><br /> 
            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="CourseName"  ></asp:TextBox><br />
            <asp:Button ID="Goalsubmit" runat="server" Text="Submit" CssClass="btn btn-success" ToolTip="Submit" OnClick="Goalsubmit_Click" />
        </div>
    </div>
</asp:Content>
