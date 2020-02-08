<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudentPortal.Home" MasterPageFile="~/Main.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" width="60%" style="float:left;">
        <tr>
            <td colspan="2" style="text-align:left;padding-left:20%;font-size:20px;">
                Personal Details
            </td>
        </tr>
        <tr>
            <td style="width:30%;" class="padding-top">
                Name
            </td>
            <td class="padding-top">
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Address
            </td>
            <td class="padding-top">
                <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Date of Birth
            </td>
            <td class="padding-top">
                <asp:Label ID="lblDob" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Email
            </td>
            <td class="padding-top">
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Current Semester    
            </td>
            <td class="padding-top">
                <asp:Label ID="lblCurSem" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" style="float:left;width:40%;">
        <tr>
            <td style="font-size:18px;text-align:center;" class="padding-bottom">
                Your Profile Picture
            </td>
        </tr>
        <tr>
            <td style="text-align:center;vertical-align:middle;height:150px;width:100px;">
                <asp:Image ID="imgUser" runat="server" style="max-height:150px;max-width:150px;" />        
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-right:10px;">
        <div style="font-size:18px;" class="marginTop20 padding-bottom">
            Your marks
        </div>
        <asp:GridView ID="gvMarks" EmptyDataText="No marks found." AutoGenerateColumns="false" runat="server" CssClass="gridViewDefault" Width="80%">
            <Columns>
                <asp:BoundField DataField="sname" HeaderText="Subjects" HeaderStyle-CssClass="alignLeft" />
                <asp:BoundField DataField="earnedMarks" HeaderText="Marks" HeaderStyle-CssClass="alignLeft" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>