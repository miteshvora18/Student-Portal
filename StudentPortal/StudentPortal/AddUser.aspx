<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="StudentPortal.AddUser" MasterPageFile="~/Admin.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    Add New User 
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" width="100%" style="padding-top:20px;">
       <tr>
            <td style="vertical-align:top;width:30%;" class="padTop5">
                <asp:Label ID="Label1" runat="server" Text="Enter name"></asp:Label>            
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name is required" Display="Dynamic" ControlToValidate="txtName">*</asp:RequiredFieldValidator>    
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Select Date of Birth (dd-mm-yyyy)"></asp:Label>            
            </td>
            <td>
                <asp:DropDownList ID="ddlDay" runat="server" Width="40px">
                </asp:DropDownList> - 
                <asp:DropDownList ID="ddlMonth" runat="server" Width="40px">
                </asp:DropDownList> - 
                <asp:DropDownList ID="ddlYear" runat="server" Width="60px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Enter address"></asp:Label>            
            </td>
            <td>
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" class="marginTop20" style="height:100px;width:500px;max-width:500px;"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top;" class="padTop5">
                <asp:Label ID="Label4" runat="server" Text="Enter email"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox> 
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
            <td>
                <asp:Label ID="Label5" runat="server" Text="Select current semester"></asp:Label>            
            </td>
            <td>
                <asp:DropDownList ID="ddlCurrentSem" runat="server" Width="40px">
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td style="width:30%;vertical-align:top;" class="padTop30">
                <asp:Label ID="lblUsername" runat="server" Text="Select username"></asp:Label>            
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="marginTop20" Width="200px"></asp:TextBox>            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Username is required" ControlToValidate="txtUsername" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top;" class="padTop5">
                <asp:Label ID="Label6" runat="server" Text="Enter password"></asp:Label>            
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Password is required" Display="Dynamic" 
                    ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:top;" class="padTop5">
                <asp:Label ID="Label7" runat="server" Text="Confirm password"></asp:Label>            
            </td>
            <td>
                <asp:TextBox ID="txtConfPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Password is required" Text="*" ControlToValidate="txtConfPass" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Both passwords must match" ControlToCompare="txtPassword" 
                    ControlToValidate="txtConfPass" Display="Dynamic">Password do not match</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Upload file"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fuImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="marginTop20" 
                    style="float:left;" onclick="btnSubmit_Click" />
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

