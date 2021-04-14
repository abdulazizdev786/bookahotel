<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="registerhotel.aspx.cs" Inherits="BookAHotel.registerhotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Content/bootstrap.css" rel="stylesheet" />
   <link href="Content/master.css" rel="stylesheet" />
    <link href="Content/reguser.css" rel="stylesheet" />
    <link href="Content/responsive.css" rel="stylesheet" />

    <div class="main-wrapper">
        <h1>Please Enter The Hotel Details.</h1>
        <div class="row m-0 reg-container">
            <div class="col-12 col-sm-6 reg-table-container">
            <table class="table table-light" style="width: 100%;">
            <tr class="row m-0">
                <td class="col-6">
                    <asp:TextBox CssClass="col-12 input" ID="txtName" runat="server" TextMode="SingleLine" placeholder="Name" required="required"></asp:TextBox>
                </td>
                <td class="col-6">
                    <asp:TextBox CssClass="col-12 input" ID="txtAddr" runat="server" TextMode="SingleLine" placeholder="Address" required="required"></asp:TextBox>
                </td>
            </tr>
            <tr class="row m-0">
                <td class="row m-0 col-12 row-2" colspan="2">
                    <asp:TextBox CssClass="col input" ID="txtCity" runat="server" TextMode="SingleLine" placeholder="City" required="required"></asp:TextBox>
                    <asp:TextBox CssClass="col  input" ID="txtPhone" runat="server" TextMode="Phone" placeholder="Phone" required="required"></asp:TextBox>
                    <asp:DropDownList CssClass="col  input dropdown" ID="catDropdown" runat="server">
                    <asp:ListItem Value="">Category</asp:ListItem>  
                        <asp:ListItem>1 Star</asp:ListItem>  
                        <asp:ListItem>2 Star</asp:ListItem>  
                        <asp:ListItem>3 Star</asp:ListItem> 
                        <asp:ListItem>4 Star</asp:ListItem> 
                        <asp:ListItem>5 Star</asp:ListItem> 
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="row m-0">
                <td class="row m-0 col-12 row-2" colspan="2">
                    <asp:TextBox CssClass="col input" ID="txtNor" runat="server" TextMode="SingleLine" placeholder="No of Rooms" required="required"></asp:TextBox>
                    <asp:TextBox CssClass="col  input" ID="txtCharges" runat="server" TextMode="SingleLine" placeholder="Per Day Charges" required="required"></asp:TextBox>
                    <asp:DropDownList CssClass="col  input dropdown" ID="fsDropdown" runat="server">
                    <asp:ListItem Value="">Meal Services</asp:ListItem>  
                        <asp:ListItem>Yes</asp:ListItem>  
                        <asp:ListItem>No</asp:ListItem>  
                        <asp:ListItem>As Required</asp:ListItem>  
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
                    <asp:Label ID="imgLable" runat="server" Text="Add Images Gallery"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
                </td>
            </tr>
            <tr class="row m-0" >
                <td colspan="2" class="col-12">
                    <asp:Button CssClass="btn" ID="btnRegister" runat="server" Text="Register"  />
                    <a href="home.aspx" class="btn btnCancel" ID="btnCancel">Cancel</a>
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
