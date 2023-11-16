<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Form.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Login Page</h3>

<script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen"/>
    <div style="max-width: 400px;">
        <h2 class="form-signin-heading">Registration</h2>
        <asp:Label Text="Username" runat="server" AssociatedControlID="txtUsername"/>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username" required="required"/>
        <br/>
        <asp:Label Text="Password" runat="server" AssociatedControlID="txtPassword"/>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Password must contain: Minimum 8 characters at-least 1 Alphabet and 1 Number"
            CssClass="form-control" placeholder="Enter Password" required="required"/>
        <asp:Button ID="btnLogin" runat="server" Text="Sign up" CssClass="btn btn-primary" OnClick="btnLogin_Click"/>
    </div>


</asp:Content>


