<%@ Page Title="Goal & Objectives" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Goal.aspx.cs" Inherits="Menter.Goal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="align-content-center">
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
            <div>
                        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" DataKeyNames="goal" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="873px">
                            <Columns>
                                <asp:BoundField DataField="goal" HeaderText="Goal" /> 
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>

            </div>
        </div>
    </div>
</asp:Content>
