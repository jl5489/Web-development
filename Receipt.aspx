<%@ Page Language="C#" MasterPageFile="~/Teams.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="GroupASS.Receipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <h2>Purchase Receipt</h2>
         <asp:Label ID="lblUser" runat="server" Font-Size="Larger"></asp:Label>
         <asp:GridView ID="grvReceipt" runat="server" OnRowDataBound="grvReceipt_RowDataBound" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Width="1241px" RowStyle-HorizontalAlign="Center">
         <AlternatingRowStyle BackColor="#DCDCDC" />
         <Columns>
         <asp:BoundField DataField="GameID" HeaderText="GameID"></asp:BoundField>
         <asp:BoundField DataField="Name" HeaderText="Items"></asp:BoundField>
         <asp:BoundField DataField="Price" HeaderText="Price per Unit" DataFormatString="{0:c}"></asp:BoundField>
         </Columns>

                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
         </asp:GridView>
         <hr />
            <table class="auto-style5" style="text-align: right">
                <tr>
                    <td style="font-size: large">
            <asp:Label ID="lblTotalPrice" runat="server" Font-Bold="true" ></asp:Label></td>
                </tr>
                <tr>
                    <td style="font-size: large">
            <asp:Label ID="lblMethod" runat="server" ></asp:Label><hr />
            &nbsp;&nbsp;

                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
            <asp:Image ID="imgDone" runat="server" ImageUrl="~/Images/Complete_icon.png" Height="100px" Width="100px" />

                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; font-size: x-large;">Transaction Complete!<br />
                        Thanks for Purchasing!</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="txtDone" runat="server" CssClass="auto-style6" Height="37px" Text="Done" Width="97px" />
                    </td>
                </tr>
            </table>


         </div>
</asp:Content>
