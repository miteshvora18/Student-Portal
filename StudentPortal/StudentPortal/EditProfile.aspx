<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="EditProfile.aspx.cs" Inherits="StudentPortal.EdtiProfile" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="2" style="text-align:left;padding-left:20%;font-size:20px;margin-bottom:20px;" valign="middle">
                Edit Profile
            </td>
        </tr>
        <tr>
            <td style="width:20%;margin-bottom:0" class="padding-top">
                Name 
            </td>
            <td class="padding-top">
                <asp:TextBox ID="txtName" runat="server" Width="200px" style="margin-bottom:0;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="txtName">*</asp:RequiredFieldValidator>    
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Address
            </td>
            <td class="padding-top">
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" class="marginTop20" style="height:100px;width:500px;max-width:500px;"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td class="padding-top padding-bottom">
                Date of Birth
            </td>
            <td class="padding-top padding-bottom">
                <asp:DropDownList ID="ddlDay" runat="server" Width="40px">
                </asp:DropDownList> - 
                <asp:DropDownList ID="ddlMonth" runat="server" Width="40px">
                </asp:DropDownList> - 
                <asp:DropDownList ID="ddlYear" runat="server" Width="60px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Email
            </td>
            <td class="padding-top">
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" style="margin-bottom:0"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="Dynamic" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>   
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Email format is incorrect" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtEmail">Invalid email format</asp:RegularExpressionValidator>         
            </td>
        </tr>
        <tr>
            <td class="padding-top">
                Profile Picture
            </td>
            <td class="padding-top">
                <asp:FileUpload ID="fuImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding-left:10%;padding-top:20px">
                <asp:Button ID="btnSubmit" runat="server" Text="Update Profile" 
                    style="float:left;" onclick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
