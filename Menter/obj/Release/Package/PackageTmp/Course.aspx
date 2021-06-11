<%@ Page Title="Courses" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Menter.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="text-center">
              <h1>COURSE</h1>
        </div>
    </div>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="700px">
         <Columns>
             <asp:TemplateField HeaderText="Course Code">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("coursecode") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("coursecode") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Course Name">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("coursename") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("coursename") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
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
    <br />
     <div class="container">
        <div class="text-center">
            <asp:Label runat="server" Font-Bold="true" Font-Size="Large">Comment</asp:Label>
            <asp:TextBox ID="Comment" runat ="server" Width="700" Height="200" TextMode="MultiLine" placeholder="Comment"></asp:TextBox><br /><br />
              <p>
    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" ToolTip="Submit" OnClick="submit_Click" />
              </p>
        </div>
    </div>
</asp:Content>
