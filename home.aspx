<%@ Page Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="groupassignment.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:MultiView ID="mvAdver" runat="server" ActiveViewIndex="0">
                <asp:View ID="viewPicture1" runat="server">
                    <asp:ImageButton ID="imgArrow1" runat="server" ImageUrl="~/Picture/arrow2.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle"  CommandArgument="viewPicture5" CommandName="SwitchViewByID"/>
                    <asp:ImageButton ID="imbAdverList1" runat="server" ImageUrl="~/TeamsImages/gtaV.png" Width="1000" Height="500" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imgArrow2" runat="server" ImageUrl="~/Picture/arrow.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle" CommandName="NextView" />
                </asp:View>
                <asp:View ID="viewPicture2" runat="server">
                    <asp:ImageButton ID="imgArrow3" runat="server" ImageUrl="~/Picture/arrow2.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imbAdverList2" runat="server" ImageUrl="~/TeamsImages/dbdad.png" Width="1000" Height="500" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imgArrow4" runat="server" ImageUrl="~/Picture/arrow.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle" CommandName="NextView" />
                </asp:View>
                <asp:View ID="viewPicture3" runat="server">
                    <asp:ImageButton ID="imgArrow5" runat="server" ImageUrl="~/Picture/arrow2.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imbAdverList3" runat="server" ImageUrl="~/TeamsImages/gtaVad.png" Width="1000" Height="500" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imgArrow6" runat="server" ImageUrl="~/Picture/arrow.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle" CommandName="NextView" />
                </asp:View>
                <asp:View ID="viewPicture4" runat="server">
                    <asp:ImageButton ID="imgArrow7" runat="server" ImageUrl="~/Picture/arrow2.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imbAdverList4" runat="server" ImageUrl="~/TeamsImages/yugioh.png" Width="1000" Height="500" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imgArrow8" runat="server" ImageUrl="~/Picture/arrow.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle" CommandName="NextView" />
                </asp:View>
                <asp:View ID="viewPicture5" runat="server">
                    <asp:ImageButton ID="imgArrow9" runat="server" ImageUrl="~/Picture/arrow2.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imbAdverList5" runat="server" ImageUrl="~/TeamsImages/yugiohad.png" Width="1000" Height="500" ImageAlign="AbsMiddle"/>
                    <asp:ImageButton ID="imgArrow10" runat="server" ImageUrl="~/Picture/arrow.jpeg" Height="181px" Width="109px" ImageAlign="AbsMiddle" CommandName="SwitchViewByIndex" CommandArgument="0" />
                </asp:View>
            </asp:MultiView>
            <br />
            BROWSE BY CATEGORY:
            <br />
            <asp:ImageButton ID="imbCatelistAdv" runat="server" ImageUrl="~/TeamsImages/Adventure.png" ImageAlign="AbsMiddle" Width="250" Height="250"/>
             <asp:ImageButton ID="imbCatelistHorror" runat="server" ImageUrl="~/TeamsImages/Horror.png" ImageAlign="AbsMiddle" Width="250" Height="250"/>
             <asp:ImageButton ID="imbCatelistSimu" runat="server" ImageUrl="~/TeamsImages/Simulative.png" ImageAlign="AbsMiddle" Width="250" Height="250"/>
             <asp:ImageButton ID="imbCatelistSport" runat="server" ImageUrl="~/TeamsImages/Sportandracing'.png" ImageAlign="AbsMiddle" Width="250" Height="250"/>
             <asp:ImageButton ID="imbCatelistStra" runat="server" ImageUrl="~/TeamsImages/stratrgic.png" ImageAlign="AbsMiddle" Width="250" Height="250"/>

        </div>
</asp:Content>



