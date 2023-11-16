<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Form.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>

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
            CssClass="form-control" placeholder="Enter Password"/>
        <br/>
        
        <asp:Label Text="Email" runat="server" AssociatedControlID="txtEmail"/>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" required="required"/>
        <hr/>
        <asp:Button ID="btnSignup" runat="server" Text="Sign up" CssClass="btn btn-primary" OnClick="btnSignup_Click"/>
    </div>


    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
