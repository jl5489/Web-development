<%@ Page Title="" Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="groupassignment.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <aside><h2>Edit the categories...</h2></aside>
   <article>

       <div>
           Category ID:
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
                       Category ID:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:TextBox ID="txtCatID" runat="server" />
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
                       Category ID:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblCategoryID" runat="server" Text="Label"></asp:Label>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell>
                       Name:
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
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
