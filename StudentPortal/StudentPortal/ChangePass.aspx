<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="StudentPortal.pass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="UTF-8" /> 
    <title>
        Login page
    </title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>

<form runat="server">
  <h1>Change Password</h1>
  <div class="inset">
  <p>
    <label for="email">Existing password</label>
    <asp:TextBox ID="txtExistingPass" runat="server" TextMode="Password" Width="230px"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ErrorMessage="*" Display="Dynamic" ControlToValidate="txtExistingPass"></asp:RequiredFieldValidator>
  </p>
  <p>
    <label for="email">New password</label>
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="230px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
    
  </p>
  <p>
    <label for="email">Confirm password</label>
    <asp:TextBox ID="txtConfPass" runat="server" TextMode="Password" Width="230px"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
          ControlToValidate="txtConfPass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator1" runat="server" 
          ControlToCompare="txtPass" ControlToValidate="txtConfPass" 
          Display="Dynamic" ErrorMessage="Passwords do not match"></asp:CompareValidator>
  </p>
  </div>
  <p class="p-container">
      <asp:HyperLink ID="hyBack" runat="server">Back to Home</asp:HyperLink>
      <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="margin-right:10px;" 
          onclick="btnSubmit_Click" />
  </p>
</form>

</body>
</html>
