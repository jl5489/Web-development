<%@ Page Title="" Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeFile="EditGames.aspx.cs" Inherits="groupassignment.EditGames" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <aside><h2>Edit the games</h2></aside>
   <article>

       <div>
           Game ID:
           <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
           &nbsp;&nbsp;
           <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/>
           <br />
           <asp:Label ID="lblResult" runat="server" ></asp:Label>
           <br /><br />
           <asp:Label ID="lblStatus" runat="server"></asp:Label>
           <asp:Label ID="lbHeader" runat="server" Text="Add New Record" Font-Size="Larger"></asp:Label>
           <asp:Table ID="tabEditing" runat="server">
               <asp:TableRow>
                   <asp:TableCell>
                       Game ID:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:TextBox ID="txtGameID" runat="server" />
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       Name:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       CategoryID:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:DropDownList ID="ddlCate" runat="server">
                           <asp:ListItem>CategoryID List</asp:ListItem>
                           <asp:ListItem Value="c1">c1 Action</asp:ListItem>
                           <asp:ListItem Value="c2">c2 Horror</asp:ListItem>
                           <asp:ListItem Value="c3">c3 Strategy</asp:ListItem>
                           <asp:ListItem Value="c4">c4 Sport & Racing</asp:ListItem>
                           <asp:ListItem Value="c5">c5 Adventure</asp:ListItem>
                           <asp:ListItem Value="c6">c6 Simulation</asp:ListItem>
                       </asp:DropDownList>                   
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       Price:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       Description:
                   </asp:TableCell>
                   <asp:TableCell>
                        <asp:TextBox ID="txtDesc" runat="server"  TextMode="MultiLine" MaxLength="50"/>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                            <asp:TableCell>
                                Photo:
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Image ID="imgProdPhoto" runat="server" Height="100" Width="80"/>
                                <asp:LinkButton ID="lbtnProdPhoto" runat="server" OnClick="lbtnProdPhoto_Click" Text="Change photo?"></asp:LinkButton>
                                <asp:FileUpload ID="fiuImage" runat="server" />
                                <br />
                                <asp:LinkButton ID="lbtnCancel" runat="server" OnClick="lbtnCancel_Click">Cancel Upload</asp:LinkButton>
                                <br />
                                <asp:Label ID="lblUploadStatus" runat="server" ForeColor="Red" />
                                <asp:Label ID="lblFileName" runat="server" Visible="false"></asp:Label>
                            </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                            <asp:TableCell>
                                Advertiment:
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Image ID="imgAD" runat="server" Height="100" Width="80"/>
                                <asp:LinkButton ID="lbtnAD" runat="server" OnClick="lbtnProdPhoto_Click" Text="Change photo?"></asp:LinkButton>
                                <asp:FileUpload ID="fiuAD" runat="server" />
                                <br />
                                <asp:LinkButton ID="lbtnCancel1" runat="server" OnClick="lbtnCancel_Click">Cancel Upload</asp:LinkButton>
                                <br />
                                <asp:Label ID="lblUploadStatus1" runat="server" ForeColor="Red" />
                                <asp:Label ID="lblFilename1" runat="server" Visible="false"></asp:Label>
                            </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       &nbsp;
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"/>
                       <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
                       <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"/>
                       <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="tabResult" runat="server">
               <asp:TableRow>
                   <asp:TableCell>
                       Game ID:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblGameID" runat="server"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       Name:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblName" runat="server"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       CategoryID:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblCate" runat="server"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>Price</asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       Description:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblDesc" runat="server" Text="Label"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Photo:</asp:TableCell>
                    <asp:TableCell>
                        <asp:Image ID="imgGame" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Advertisment:</asp:TableCell>
                    <asp:TableCell>
                        <asp:Image ID="imgDisplay" runat="server" />              
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click"/>
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
       </div>
       </article>
</asp:Content>
