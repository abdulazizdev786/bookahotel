<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BookAHotel.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/master.css" rel="stylesheet" />
     <link href="Content/login.css" rel="stylesheet" />
     <link href="Content/responsive.css" rel="stylesheet" />

    <div class="container-fluid login-container">

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Select an option</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                         <a href="./registerhotel.aspx" ID="btnHotelRegister" class="btn btnRegister" >Register a Hotel</a>
                         <a href="./registeruser.aspx" ID="btnUserRegister" class="btn btnRegister"  >Register as User</a>
                    </div>
                    
                </div>
            </div>
        </div>
         <!-- Modal End -->

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
                        <a href="#" ID="btnRegister" class="btn btnRegister"  data-toggle="modal" data-target="#exampleModalCenter">Register</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
