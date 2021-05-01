<%@ Page Title="Result" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Menter.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 395px;
        }
        .auto-style2 {
            height: 11px;
        }
        .auto-style3 {
            width: 395px;
            height: 11px;
        }
        .auto-style4 {
            height: 11px;
            width: 166px;
        }
        .auto-style5 {
            width: 166px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mx-auto">
        <div class="text-center">
              <h1>RESULT</h1>
              <p>&nbsp;</p>
        </div>
        <div class="mx-auto">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="700px">
                        <Columns>
                            <asp:BoundField DataField="code" HeaderText="Code" />
                            <asp:BoundField DataField="course" HeaderText="Course" />
                            <asp:BoundField DataField="credit" HeaderText="Credit" />
                            <asp:BoundField DataField="status" HeaderText="Status" />
                            <asp:BoundField DataField="grade" HeaderText="Grade" />
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

</asp:Content>
