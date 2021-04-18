<%@ Page Title="Profile" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Menter.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 181px;
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
                                        <td> &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            <asp:FormView CssClass="text-start"  ID="FormView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="470px">
                                                <EditItemTemplate>
                                                    matricno:
                                                    <asp:TextBox ID="matricnoTextBox" runat="server" Text='<%# Bind("matricno") %>' />
                                                    <br />
                                                    name:
                                                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                                    <br />
                                                    programme:
                                                    <asp:TextBox ID="programmeTextBox" runat="server" Text='<%# Bind("programme") %>' />
                                                    <br />
                                                    school:
                                                    <asp:TextBox ID="schoolTextBox" runat="server" Text='<%# Bind("school") %>' />
                                                    <br />
                                                    gender:
                                                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                                                    <br />
                                                    email:
                                                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                                    <br />
                                                    semester:
                                                    <asp:TextBox ID="semesterTextBox" runat="server" Text='<%# Bind("semester") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </EditItemTemplate>
                                                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <InsertItemTemplate>
                                                    matricno:
                                                    <asp:TextBox ID="matricnoTextBox" runat="server" Text='<%# Bind("matricno") %>' />
                                                    <br />
                                                    name:
                                                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                                    <br />
                                                    programme:
                                                    <asp:TextBox ID="programmeTextBox" runat="server" Text='<%# Bind("programme") %>' />
                                                    <br />
                                                    school:
                                                    <asp:TextBox ID="schoolTextBox" runat="server" Text='<%# Bind("school") %>' />
                                                    <br />
                                                    gender:
                                                    <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                                                    <br />
                                                    email:
                                                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                                    <br />
                                                    semester:
                                                    <asp:TextBox ID="semesterTextBox" runat="server" Text='<%# Bind("semester") %>' />
                                                    <br />
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    Matric Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="matricnoLabel" runat="server" Text='<%# Bind("matricno") %>' />
                                                    <br />
                                                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                                                    <br />
                                                    Programme&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="programmeLabel" runat="server" Text='<%# Bind("programme") %>' />
                                                    <br />
                                                    School&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="schoolLabel" runat="server" Text='<%# Bind("school") %>' />
                                                    <br />
                                                    Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                                                    <br />
                                                    Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                                    <br />
                                                    Semester&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :
                                                    <asp:Label ID="semesterLabel" runat="server" Text='<%# Bind("semester") %>' />
                                                    <br />

                                                </ItemTemplate>
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                            </asp:FormView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MenterConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td>
                                            <br />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                </div>
        </div>
    </div>
    </div>
</asp:Content>
