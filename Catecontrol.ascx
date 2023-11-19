<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Catecontrol.ascx.cs" Inherits="groupassignment.Catecontrol" %>
<asp:DataList ID="dltCategories" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" Width="500px">
    <ItemTemplate>
        <asp:HyperLink ID="hlkMenu" runat="server" Text='<%# Eval("CategoryName") %>' NavigateUrl='<%# "Category.aspx?IDCAT="+Eval("CategoryID") %>' ForeColor="Black" Font-Names="Times New Roman"></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
