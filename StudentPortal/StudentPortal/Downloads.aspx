<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Downloads.aspx.cs" Inherits="StudentPortal.Downloads" MasterPageFile="~/Main.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="2" style="text-align:left;padding-left:20%;font-size:20px;margin-bottom:20px;" valign="middle">
                Download Material
            </td>
        </tr>
        <tr id="tr1a" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Downloads/1a.pdf" Target="_blank">Semester 1 - 1st Book</asp:HyperLink>
            </td>
        </tr>
        <tr id="tr1b" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Downloads/1b.pdf" Target="_blank">Semester 1 - 2nd Book</asp:HyperLink>
            </td>
        </tr>
        <tr id="tr2" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Downloads/2.pdf" Target="_blank">Semester 2 Book</asp:HyperLink>
            </td>
        </tr>
        <tr id="tr3" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Downloads/3.pdf" Target="_blank">Semester 3 Book</asp:HyperLink>
            </td>
        </tr>
        <tr id="tr4" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Downloads/4.pdf" Target="_blank">Semester 4 Book</asp:HyperLink>
            </td>
        </tr>
        <tr id="tr5" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Downloads/5.pdf" Target="_blank">Semester 5 Books</asp:HyperLink>
            </td>
        </tr>
        <tr id="tr6" runat="server" visible="false">
            <td>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Downloads/6.pdf" Target="_blank">Semester 6 Book</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>