<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="StudentPortal.AdminHome" MasterPageFile="~/Admin.Master" %>

<asp:Content ContentPlaceHolderID="header" runat="server">
    Admin Home Page 
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding-top alignCenter">
        <div style="font-size:18px;">Users List</div> (Click on user id to enter student marks)
    </div>
    <asp:GridView ID="gvUsers" runat="server" Width="100%" 
        CssClass="marginTop gridViewDefault" AutoGenerateColumns="false" 
        BorderWidth="0" onrowdatabound="gvUsers_RowDataBound">
        <Columns>
            <%--<asp:BoundField DataField="uid" HeaderText="User Id" ItemStyle-CssClass="alignCenter" />--%>
            <asp:TemplateField ItemStyle-CssClass="alignCenter">
                <HeaderTemplate>
                    User Id
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="hyUid" runat="server">
                        <%#Eval("uid") %>
                    </asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="username" HeaderText="Username" ItemStyle-CssClass="alignCenter"/>
            <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-CssClass="alignCenter"/>
            <asp:BoundField DataField="currentSem" HeaderText="Current Semester" ItemStyle-CssClass="alignCenter"/>
        </Columns>
    </asp:GridView>
</asp:Content>