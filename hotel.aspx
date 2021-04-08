<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="hotel.aspx.cs" Inherits="BookAHotel.hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <link href="Content/bootstrap.css" rel="stylesheet" />
   <link href="Content/master.css" rel="stylesheet" />
    <link href="Content/reguser.css" rel="stylesheet" />
    <link href="Content/responsive.css" rel="stylesheet" />

    <div class="main-wrapper">
        <h1>Please Enter Your Details.</h1>
        <div class="row m-0 reg-container">
            <div class="col-12 col-sm-6 reg-table-container">
            <table class="table table-light" style="width: 100%;">
            <tr class="row m-0">
                <td class="col-6">
                    <asp:TextBox CssClass="col-12 input" ID="txtFname" runat="server" TextMode="SingleLine" placeholder="First Name" required="required"></asp:TextBox>
                </td>
                <td class="col-6">
                    <asp:TextBox CssClass="col-12 input" ID="txtLname" runat="server" TextMode="SingleLine" placeholder="Last Name" required="required"></asp:TextBox>
                </td>
            </tr>
            <tr class="row m-0">
                <td class="row m-0 col-12 row-2" colspan="2">
                    <asp:TextBox CssClass="col input" ID="txtNationality" runat="server" TextMode="SingleLine" placeholder="Nationality" required="required"></asp:TextBox>
                    <asp:TextBox CssClass="col  input" ID="txtPhone" runat="server" TextMode="Phone" placeholder="Phone" required="required"></asp:TextBox>
                    <asp:DropDownList CssClass="col  input dropdown" ID="genDropdown" runat="server">
                    <asp:ListItem Value="">Gender</asp:ListItem>  
                        <asp:ListItem>Male </asp:ListItem>  
                        <asp:ListItem>Female</asp:ListItem>  
                        <asp:ListItem>Other</asp:ListItem>    
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="row m-0">
                <td class="col-6">
                    <asp:TextBox CssClass="col-12 input" ID="txtEmail" runat="server" TextMode="Email" placeholder="Email" required="required"></asp:TextBox>
                </td>
                <td class="col-6">
                     <asp:TextBox CssClass="col-12 input" ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" required="required"></asp:TextBox>
                </td>
            </tr>
            <tr class="row m-0" >
                <td colspan="2" class="col-12">
                    <asp:Button CssClass="btn" ID="btnRegister" runat="server" Text="Register"  />
                    <asp:Button CssClass="btn btnCancel" ID="btnCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
        </div>
            <div class="col-12 col-sm-6 reg-form-img">
                <img src="images/reception.jpg" />
            </div>
        </div>
    </div>
</asp:Content>
