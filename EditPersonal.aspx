<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPersonal.aspx.cs" Inherits="Assignment.EditPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;">Edit Profile Detail</h1>
            <asp:Table ID="tabEdit" runat="server">
            <asp:TableRow>
                <asp:TableCell>Name:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtName" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>IC: </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtIc" runat="server" />
                </asp:TableCell>
            </asp:TableRow>    
            <asp:TableRow>
                <asp:TableCell>Username:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtUname" runat="server" />
                </asp:TableCell>
        
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Password:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPwd" runat="server" />
                </asp:TableCell>
             </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Phone:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPhone" runat="server" />
                </asp:TableCell>
             </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Profile picture:</asp:TableCell>
                <asp:TableCell>
                    <asp:FileUpload ID="fiuProfile" runat="server" />
                </asp:TableCell>
             </asp:TableRow>                
            <asp:TableRow>
                <asp:TableCell><br /><br /></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnCancel" runat="server" text="Cancel"  OnClick="btnCancel_Click"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                </asp:TableCell>
             </asp:TableRow>
                </asp:Table>



            <asp:Table ID="tabResult" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Name:</asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblName" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>IC: </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblIc" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>    
                <asp:TableRow>
                    <asp:TableCell>Username:</asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblUname" runat="server"  />
                    </asp:TableCell>
                    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Password:</asp:TableCell>
                    <asp:TableCell>
                        *********
                        <asp:Label ID="lblPwd" runat="server" Visible="false" />
                    </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Phone:</asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPhone" runat="server" />
                    </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Profile picture:</asp:TableCell>
                    <asp:TableCell>
                        <asp:Image ID="imgP" runat="server" />
                    </asp:TableCell>
                 </asp:TableRow>                
                <asp:TableRow>
                    <asp:TableCell><br /><br /></asp:TableCell>
                    <asp:TableCell>
                        
                    </asp:TableCell>
                 </asp:TableRow>        
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell>
                        
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" onclick="btnEdit_Click"/>                        
                    </asp:TableCell>
                 </asp:TableRow>                

            </asp:Table>

            <asp:Table ID="tabVerify" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Please enter your password to verify your identity: </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtVerify" runat="server" TextMode="Password"/>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblVerify" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnVcancel" runat="server" Text="Cancel" OnClick="btnVcancel_Click" />
                        <asp:Button ID="btnVerify" runat="server" Text="Verify" ForeColor="Red" OnClick="btnVerify_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
