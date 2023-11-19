<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="GroupASS.Feedback"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 60px;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td><h1>Privacy Feedback</h1></td>
                </tr>
                <tr>
                    <td><h3>This page is meant for questions by people who do not have a Steam user account. To protect your data we will only provide information about your account, correct or delete user data if you have logged in and requested it here: <a href="https://help.steampowered.com/" target="_blank">https://help.steampowered.com/</a></h3></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Your Email<br />
                        <asp:TextBox ID="txtEmail" runat="server" Width="241px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" BackColor="Yellow" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="You must give an email." ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" BackColor="Yellow" ControlToValidate="txtEmail" ErrorMessage="Only valid email is accepted." ForeColor="Red" ValidationExpression="\S+\@\S+\.\S+" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Your Region<br />
                        <asp:DropDownList ID="ddlRegion" runat="server">
                            <asp:ListItem>Select one...</asp:ListItem>
                            <asp:ListItem>United States of America</asp:ListItem>
                            <asp:ListItem>Europe</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvRegion" runat="server" BackColor="Yellow" ControlToValidate="ddlRegion" ErrorMessage="You must select a region." ForeColor="Red" InitialValue="Select one..."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>Message<br />
                        <asp:TextBox ID="txtMessage" runat="server" Height="174px" Width="449px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" BackColor="Yellow" ControlToValidate="txtMessage" ErrorMessage="You must enter your message." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" Height="32px" Width="110px"/>
                        <br />
                        <asp:Label ID="lblNotice" runat="server" Font-Size="XX-Large"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
