<%@ Page Title="" Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="Gamedetail.aspx.cs" Inherits="groupassignment.Gamedetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:DataList ID="dltGame" runat="server" RepeatDirection="Horizontal">
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
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
