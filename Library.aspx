<%@ Page Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="GroupASS.Library" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class=" col-lg-8" style="margin-top:30px">
            <h1>Library</h1>
            <asp:Panel ID="pnlLibrary" runat="server" GroupingText="Recent Games">
            <asp:DataList ID="dltLibrary" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div style="width:350px; text-align:center">
                    <asp:Image ID="imgLibrary" runat="server" ImageUrl='<%#Eval("Image","~/Images/{0}") %>' width="200px" Height="120px" />
                        <br />
                    <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                        <br />
                    <asp:Label ID="lblCategory" runat="server" Text='<%# "Category: " + Eval("CategoryName") %>'></asp:Label>
                        <br />
                    <asp:LinkButton ID="lbtnMore" runat="server" Text="Click Here for More Information" />
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
        </div>
</asp:Content>