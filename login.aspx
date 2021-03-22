<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BookAHotel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book A Hotel</title>
    <link rel="stylesheet" href="Content/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="main-wrapper">
            <asp:Panel ID="Panel1" runat="server" GroupingText="Registration Form" CssClass="reg-panel">
                <div class="form-container">
                    <div class="colm-1">

                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/profile.png" CssClass="profile-icon" />

                    </div>
                    <div class="colm-2">
                   <table style="width:100%;" class="RegFormCon">
                    <tr>
                        <td>First Name</td>
                        <td>
                            <input id="txtFname" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>
                            <input id="txtLname" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <input id="txtEmail" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <input id="txtPass" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td>
                            <input id="txtCpass" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td>
                            <input id="txtDob" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>Picture</td>
                        <td>
                            <input id="File1" type="file" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align:right">
                            <input id="Button1" type="button" class="btn btnReset" value="Reset" style="margin-right:10px" />
                            <input id="Button2" type="button" class="btn btnReg" value="Register" />
                        </td>
                    </tr>
                </table>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
