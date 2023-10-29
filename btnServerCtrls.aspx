<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="btnServerCtrls.aspx.cs" Inherits="WebApplication1.btnServerCtrls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Button Server Control</title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnOK">
        <div>
            First Label :
            <asp:Label ID="lblFirstNum" runat="server" Text="0"  EnableViewState="false"/>
            <br />
            Second Label :
            <asp:Label ID="lblSecondNum" runat="server" Text="0" />
            <br /> <br />
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <hr />
            <h1>Button Counter</h1>
            First Counter:
            <asp:Button ID="btnFirst" runat="server" Text="0" OnClick="btn_Click" />
            <br /> <br />
            Second Counter:
            <asp:Button ID="btnSecond" runat="server" Text="0" OnClick="btn_Click" />
            <hr />
            <asp:Label ID="lblSupplier" runat="server" Text="View Supplier" />
            <br /> <br />
            <asp:Button  runat="server" CommandArgument="Adidas" CommandName="View" OnCommand="Supp_Command" Text="Adidas" />
            <asp:Button  runat="server"  CommandArgument="Nike" CommandName="View" OnCommand="Supp_Command" Text="Nike" />
            <asp:Button  runat="server" CommandArgument="Reebok" CommandName="View" OnCommand="Supp_Command" Text="Reebok" />
            <asp:Button  runat="server" CommandArgument="Puma" CommandName="View" OnCommand="Supp_Command" Text="Puma" />
            <asp:Button  runat="server" CommandArgument="Vans" CommandName="View" OnCommand="Supp_Command" Text="Vans" />
            <asp:Button  runat="server" CommandName="Cancel" OnCommand="Supp_Command" Text="Cancel" />
            <br /> <br />
            <asp:Label ID="lblMessage" runat="server"/><br />
            <hr />
            <asp:Label ID="lblTime" runat="server" /><br />
            <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="btnOk_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            <hr />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" onmouseover="this.value='Click Here!'" onmouseout="this.value='Submit'" OnClick="btnSubmit_Click" />
            <asp:LinkButton ID="lbtnHome" runat="server" PostBackUrl="~/default.aspx">Home</asp:LinkButton>
        </div>
    </form>
</body>
</html>
