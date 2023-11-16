<%@ Page Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="wishList.aspx.cs" Inherits="groupassignment.wishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:Image ID="imgProduct" runat="server" /><br />
            <asp:Button ID="btnBuy" runat="server" Text="Buy" />
            <hr />
            <table>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rblGamelist" runat="server">
                            <asp:ListItem>GTA</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        Price:RM
                        <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>

                    </td>
                    
                </tr>
            </table>
        </div>
</asp:Content>
