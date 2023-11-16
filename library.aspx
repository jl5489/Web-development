<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Teams.Master" CodeBehind="library.aspx.cs" Inherits="groupassignment.library" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:Image ID="imgProduct" runat="server" /><br />
            <asp:Button ID="btnStart" runat="server" Text="Start Game" />
            <hr />
            <table>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rblGamelist" runat="server">
                            <asp:ListItem>GTA</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        Game Intoduction:
                        <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>

                    </td>
                    
                </tr>
            </table>
        </div>
</asp:Content>
