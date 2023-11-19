<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="GroupASS.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="text-align:center">
                <tr>
                    <td>
                        <hr />
                        Help&nbsp; |&nbsp; FAQ&#39;s&nbsp; | Contact Us<hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><h1>Teams Support</h1></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/Search_icon.png" Height="25px" Width="25px"/>
                        <hr /></td>
                </tr>
                </table>

            <table class="auto-style1">
                <tr>
                    <td>What do you need help with,
                        <asp:Label ID="lblUsername" runat="server"></asp:Label>
                        &nbsp;?</td>
                </tr>
                <tr>
                    <td>Having Trouble...<br />
                        <asp:RadioButton ID="rdoFeatures" runat="server" Text="What features should my gaming store website have?" AutoPostBack="true" Font-Bold="true"/><br />
                        <asp:BulletedList ID="btlFeatures" runat="server"></asp:BulletedList>
                        <asp:RadioButton ID="rdoSupport" runat="server" Text="How do I handle customer support?" AutoPostBack="true" Font-Bold="true"/><br />
                        <asp:BulletedList ID="btlSupport" runat="server" ></asp:BulletedList>
                        <asp:RadioButton ID="rdoRefund" runat="server" Text="What if a purchase is refunded to my bank or my purchase is disputed/chargeback?" AutoPostBack="true" Font-Bold="true"/><br />
                        <asp:Label ID="lblRefund" runat="server"></asp:Label>
                        <asp:RadioButton ID="rdoPurchase" runat="server" Text="What if my purchase is pending or processing? When will I become unlimited?" AutoPostBack="true" Font-Bold="true"/><br />
                        <asp:Label ID="lblPurchase" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnFeedback" runat="server" Text="Feedback" PostBackUrl="~/Feedback.aspx"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnContactUs" runat="server" Text="Contact Us" OnClick="btnContactUs_Click" />
                        <asp:Label ID="lblContactUs" runat="server"></asp:Label>
                        <asp:BulletedList ID="btlContactUs" runat="server"></asp:BulletedList>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
