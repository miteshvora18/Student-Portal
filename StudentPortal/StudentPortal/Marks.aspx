<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="StudentPortal.Marks" MasterPageFile="~/Admin.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
            <td>
            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td></td>
                    <td style="padding-top:10px;padding-bottom:10px;font-size:20px;">
                        Enter Marks for <asp:Label ID="lblUsername" runat="server" Text="" style="font-weight:bold;"></asp:Label> (Max. marks for each subject: 100)
                    </td>        
                </tr>
            </table>
            <table width="100%" class="semOuter" cellpadding="0" cellspacing="0" border="0" id="Sem1" runat="server">
                <tr>
                    <td colspan="2" style="width:20%;font-size:18px;" class="paddingBottom20">
                        Sem 1               
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Communication Skill
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem11" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem11" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem11" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Problem Solving Methodologies & Programming in C
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem12" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem12" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem12" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Computer Fundamental & Emerging Technology
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem13" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem13" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem13" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Networking & Internet Environment
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem14" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem14" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem14" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
            <table width="100%" class="semOuter" cellpadding="0" cellspacing="0" border="0" id="Sem2" runat="server">
                <tr>
                    <td colspan="2" style="width:30%;font-size:18px;" class="paddingBottom20">
                        Sem 2               
                    </td>
                </tr>
                <tr>
                    <td style="width:20%;" class="paddingBottom20">
                        Data Structure Using C Language
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem21" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem21" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator5" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem21" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Developing Applications Using Visual Basic 6.0
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem22" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem22" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator6" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem22" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Computer Organization and Architecture (COA)
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem23" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem23" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator7" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem23" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Mathematical & Statistical Foundation of Computer Science
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem24" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem24" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator8" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem24" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
            <table class="semOuter" width="100%" cellpadding="0" cellspacing="0" border="0" id="Sem3" runat="server">
                <tr>
                    <td colspan="2" style="width:30%;font-size:18px;" class="paddingBottom20">
                        Sem 3               
                    </td>
                </tr>
                <tr>
                    <td style="width:20%;" class="paddingBottom20">
                        SAD, Software Quality Assurance and Testing
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem31" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem31" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator9" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem31" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        C++ and Object oriented Programming
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem32" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem32" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator10" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem32" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        RDBMS Using Oracle
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem33" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem11" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator11" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem33" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Web Development using PHP
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem34" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem34" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator12" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem34" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
            <table class="semOuter" width="100%" cellpadding="0" cellspacing="0" border="0" id="Sem4" runat="server">
                <tr>
                    <td colspan="2" style="width:20%;font-size:18px;" class="paddingBottom20">
                        Sem 4             
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Programming with JAVA
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem41" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem41" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator13" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem41" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Programming with C#
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem42" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem42" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator14" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem42" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Network Technology and Administration
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem43" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem43" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator15" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem43" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Operating Systems Concept with Unix/Linux
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem44" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem44" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator16" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem44" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
            <table class="semOuter" width="100%" cellpadding="0" cellspacing="0" border="0" id="Sem5" runat="server">
                <tr>
                    <td colspan="2" style="width:20%;font-size:18px;" class="paddingBottom20">
                        Sem 5           
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        .NET Frameworks
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem51" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem51" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator17" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem51" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Internet Programming and Cyber Law
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem52" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem52" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator18" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem52" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Principals of Marketing
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem53" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem53" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator19" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem53" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Core Java
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem54" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem54" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator20" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem54" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
            <table class="semOuter" width="100%" cellpadding="0" cellspacing="0" border="0" id="Sem6" runat="server">
                <tr>
                    <td colspan="2" style="width:20%;font-size:18px;" class="paddingBottom20">
                        Sem 6          
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        E-Commerce
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem61" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem61" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator21" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem61" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Multimedia Systems
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem62" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem62" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator22" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem62" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Introduction to SysPro And Operating Systems
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem63" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem63" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator23" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem63" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%;" class="paddingBottom20">
                        Advance Java
                    </td>
                    <td>
                        <asp:TextBox ID="txtSem64" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                            ErrorMessage="*" ControlToValidate="txtSem64" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator24" runat="server" 
                            ErrorMessage="Marks should be between 0 and 100" ControlToValidate="txtSem64" 
                            Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td style="width:30%;"></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="float:left;" 
                            onclick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
            </td>
        </tr>
    </table>
</asp:Content>