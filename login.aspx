<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BookAHotel.WebForm2" %>
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
                        <input id="txtEmail" type="text" placeholder="Email" required="required" />
                    </td>
                </tr>
                <tr class="row m-0">
                    <td>
                        <input id="txtPassword" type="text" placeholder="Password" required="required" />
                    </td>
                </tr>
                <tr class="row m-0">
                    <td>
                        <input id="btnLogin" class="btn" type="button" value="Login" />
                        <asp:Label runat="server" CssClass="login-label">Don't Have An Account?</asp:Label>
                        <input id="btnRegister" class="btn" type="button" value="Register" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
