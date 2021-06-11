<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CourseConfirmation.aspx.cs" Inherits="Menter.CourseConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container align-middle" >
        <div class="text-center">
            <h1>COURSE CONFIRMATION</h1>
            <asp:Label runat="server">Comment</asp:Label>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1">
                <EditItemTemplate>
                    comment:
                    <asp:TextBox TextMode="MultiLine" ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <InsertItemTemplate>
                    comment:
                    <asp:TextBox TextMode="MultiLine" ID="commentTextBox" runat="server" Text='<%# Bind("comment") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label Width="700" Height="200" TextMode="MultiLine" ID="commentLabel" runat="server" Text='<%# Bind("comment") %>' />
                </ItemTemplate>
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:FormView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MenterConnectionString %>" SelectCommand="SELECT [comment] FROM [comments] WHERE ([matricno] = @matricno)">
                <SelectParameters>
                    <asp:SessionParameter Name="matricno" SessionField="user" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
