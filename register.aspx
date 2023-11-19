﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Assignment.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color: rgb(9, 39, 67);
        }
        .auto-style1 {
            width: 43px;
        }
        .auto-style4 {
            width: 306px;
        }
        .auto-style5 {
            width: 50%;
        }
        .auto-style7 {
            width: 177px;
        }
        .auto-style8 {
            width: 156px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center; color:white">Register Account</h1>
            <br /><br /><br />            
            <table style="color:white" width="100%">
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Name: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtName" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator> 

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Identity Card Number: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtIc" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvIc" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtIc" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Phone: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPhone" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Phone number format must be: xxx-xxxxxxx!" ControlToValidate="txtPhone" ForeColor="Red" Display="Dynamic" ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$" BackColor="Yellow"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Date of birth: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDob" runat="server" Width="273px" TextMode="Date" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvDob" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtDob" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Username: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtUname" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvUname" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtUname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Password: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPwd" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Confirm password:  </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtCpwd" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvCpwd" runat="server" ErrorMessage="This field must be fill in" ControlToValidate="txtCpwd" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cpvPwd" runat="server" ErrorMessage="password must be the same" ControlToCompare="txtPwd" ControlToValidate="txtCpwd" BackColor="Yellow" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7">Profile picture: </td>
                    <td class="auto-style8">
                        <%--<asp:FileUpload ID="fiuImage" runat="server" AllowMultiple="false" />--%>
                        <asp:TextBox ID="txtImage" runat="server" Width="273px" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style4" colspan="2">
                        <asp:CheckBox ID="cbxTerm" runat="server" text="click to express you agree our terms and condition" OnCheckedChanged="cbxTerm_CheckedChanged" AutoPostBack="true"/>
                    </td>
                    
                </tr>
            </table>
            <br /><br /><br />
            <table width="100%">
                <tr>
                    <td width="20%"></td>
                    <td width="20%">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="false"/>
                    </td>
                    <td width="20%"></td>
                    <td width="20%">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                    <td width="20%"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
