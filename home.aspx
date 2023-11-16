<%@ Page Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="groupassignment.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="viewPicture" runat="server">
                    <asp:ImageButton ID="imgArrow" runat="server" ImageUrl="~/Picture/arrow2.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="ImageButton3" runat="server" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Picture/arrow.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle" CommandName="Next" />
                </asp:View>
            </asp:MultiView>
        </div>
</asp:Content>

