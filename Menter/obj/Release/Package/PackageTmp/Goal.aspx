<%@ Page Title="Goal & Objectives" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Goal.aspx.cs" Inherits="Menter.Goal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container align-middle" >
        <div class="text-center">
            <h1>GOALS & OBJECTIVES</h1>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label" runat="server" Text="Goals & Objectives"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="submit" ></asp:TextBox><br />
            <asp:Button ID="Goalsubmit" runat="server" Text="Submit" CssClass="btn btn-success" ToolTip="Submit" OnClick="Goalsubmit_Click" />
            <br />
            <br />
            <br />
            <br />
            <div class ="mx-auto">
                        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" DataKeyNames="goal" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="700px">
                            <Columns>
                                <asp:BoundField DataField="goal" HeaderText="Goal" /> 
                                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>

            </div>
        </div>
    </div>
</asp:Content>
