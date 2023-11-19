<%@ Page Title="" Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="groupassignment.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:DataList ID="dltProducts" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="300px">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Image ID="imgCate" runat="server" ImageUrl='<%# Eval("Ad", "~/TeamsImages/{0}") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:Label ID="lblPrice" runat="server" Text='<%# String.Format("{0:#.00}", Eval("Price")) %>'></asp:Label>                 </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Gamedetail.aspx?IDGa="+Eval("GameID") %>' Text='<%# Eval("Description") %>'></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
