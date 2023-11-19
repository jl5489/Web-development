<%@ Page Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GroupASS.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table>
    <tr>
        <td colspan="3"><h1>Payment Method</h1></td>
    </tr>
    <tr>
        <td colspan="3">Please selest a payment method<br />
            <asp:DropDownList ID="ddlMethod" runat="server" OnSelectedIndexChanged="ddlMethod_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Choose one...</asp:ListItem>
                <asp:ListItem>Visa</asp:ListItem>
                <asp:ListItem>MasterCard</asp:ListItem>
                <asp:ListItem>Touch&#39;n Go</asp:ListItem>
            </asp:DropDownList>
        &nbsp;<br />
            <asp:Label ID="lblTNG" runat="server"></asp:Label>
        </td>
        <td rowspan="4"><h4>PAYMENT METHODS</h4>
            We accept the following secure payment methods:<br />
            <asp:ImageButton ID="ibtnCard" runat="server" ImageUrl="~/Images/Card.png" OnClick="ibtnCard_Click"/>
            <asp:ImageButton ID="ibtnMasterCard" runat="server" ImageUrl="~/Images/MasterCard.png" OnClick="ibtnMasterCard_Click"/>
            <asp:ImageButton ID="ibtnTouchnGo" runat="server" ImageUrl="~/Images/TouchnGo.png" OnClick="ibtnTouchnGo_Click"/>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">Card number<br />
            <asp:TextBox ID="txtCard" runat="server" CssClass="auto-style4" Width="244px"></asp:TextBox>
        </td>
        <td>Expiration date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Security Code<br />
            <asp:DropDownList ID="ddlExpMonth" runat="server">
                <asp:ListItem>--</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlExpYear" runat="server">
                <asp:ListItem>----</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2027</asp:ListItem>
                <asp:ListItem>2028</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCode" runat="server" Width="76px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3"><h2>Billing Information</h2></td>
    </tr>
    <tr>
        <td class="auto-style10">First name<br />
            <asp:TextBox ID="txtFirstName" runat="server" Width="131px"></asp:TextBox>
        </td>
        <td class="auto-style6">Last Name<br />
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>City<br />
            <asp:TextBox ID="txtCity" runat="server" Width="213px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">Billing address<br />
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </td>
        <td>Zip or postal code<br />
            <asp:TextBox ID="txtPoscode" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">Country<br />
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>Other...</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>Phone number<br />
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3">
    <asp:CheckBox ID="cbxSave" runat="server" Text="Save my payment infomation so checkout is easy next time" />
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" PostBackUrl="~/Receipt.aspx"/>
        </td>
    </tr>
</table>
        </div>
</asp:Content>