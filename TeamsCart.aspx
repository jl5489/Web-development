<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Teams.Master" CodeBehind="TeamsCart.aspx.cs" Inherits="labexw2.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Item List:</h2>
        <asp:GridView ID="grvItem" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Game Photo">
                <ItemTemplate>
                    <asp:Image ID="imgGame" runat="server" ImageUrl='<%# Eval("Image", "~/images/TeamsImage/{0}") %>' />
                </ItemTemplate>
                    </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Game" ></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" ></asp:BoundField>
            </Columns>
        </asp:GridView><br /><hr />

        
    </div>
    <table class="auto-style5">
        <tr>
            <td style="text-align: right"><asp:Label ID="lblTotalPrice" runat="server"  ></asp:Label></td>
        </tr>
    </table>
</asp:Content>