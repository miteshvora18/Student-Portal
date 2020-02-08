<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="StudentPortal.login" %>

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
  <h1>Log In</h1>
  <div class="inset">
  <p>
    <label for="email">Username</label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
  </p>
  <p>
    <label for="password">Password</label>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
  </p>
  </div>
  <p class="p-container">
    <%--<a href="ForgotPass.aspx">Forgot password ?</a>--%>
      <asp:Button ID="btnSubmit" runat="server" Text="Log In" 
          onclick="btnSubmit_Click" />
  </p>
</form>

</body>
</html>
