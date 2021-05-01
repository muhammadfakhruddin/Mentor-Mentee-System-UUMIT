<%@ Page Title="Profile" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Menter.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 20px;
        }
        .auto-style2 {
            width: 656px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="text-center">
        <h1>PROFILE</h1>
        <div class="container">
                            <div class="card-body">

                                <table style="width:80%;">
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td class="auto-style2"> &nbsp;</td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td class="auto-style2">
                                            <asp:FormView ID="FormView3" runat="server" CssClass="container">
                                                <ItemTemplate>
                                                    <table class="table table-bordered table-striped text-start">
                                                        <tr>
                                                            <td>Staff Number</td>
                                                            <td><%#Eval("staffno") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Name</td>
                                                            <td><%#Eval("name") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>School</td>
                                                            <td><%#Eval("school") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Gender</td>
                                                            <td><%#Eval("gender") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Email</td>
                                                            <td><%#Eval("email") %></td>  
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:FormView>
                                        </td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td class="auto-style2">
                                            <asp:FormView CssClass="container" ID="FormView2" runat="server">
                                                <ItemTemplate>
                                                    <table class="table table-bordered table-striped text-start">
                                                        <tr>
                                                            <td>Matric Number</td>
                                                            <td><%#Eval("matricno") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Name</td>
                                                            <td><%#Eval("name") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Programme</td>
                                                            <td><%#Eval("programme") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>School</td>
                                                            <td><%#Eval("school") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Gender</td>
                                                            <td><%#Eval("gender") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Email</td>
                                                            <td><%#Eval("email") %></td>  
                                                        </tr>
                                                        <tr>
                                                            <td>Semester</td>
                                                            <td><%#Eval("semester") %></td>  
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:FormView>
                                            <br />
                                        </td>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                </table>
                </div>
        </div>
    </div>
    </div>
</asp:Content>
