<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BookAHotel.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/master.css" rel="stylesheet" />
     <link href="Content/login.css" rel="stylesheet" />
     <link href="Content/responsive.css" rel="stylesheet" />

    <div class="container-fluid login-container">
        <div class="loginPanel">
            <table class="table login-form" style="width: 100%;">
                <tr class="row row-1 m-0">
                    <td>
                        <img class="profile-icon" src="images/profile.png"/>
                    </td>
                </tr>
                <tr class="row m-0">
                    <td>
                        <asp:TextBox ID="txtEmail" CssClass="text-input" runat="server" required="required" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr class="row m-0">
                    <td>
                        <asp:TextBox ID="txtPassword" CssClass="text-input" runat="server" required="required" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr class="row m-0">
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
                        <asp:Label runat="server" CssClass="login-label">Don't Have An Account?</asp:Label>
                        <a href="registeruser.aspx" ID="btnRegister" class="btn btnRegister">Register</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
