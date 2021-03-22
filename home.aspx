<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BookAHotel.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
     <link href="Content/styles.css" rel="stylesheet" />
   


    <div class="intro-header">
        <div class="container">
                <div class="col-sm-12">      
                    <div class=" intro-message">
                        <h1>Hotel Booking</h1>
                        <h3>Welcome to Book A Hotel</h3>
                    </div>
                </div>
                <div class="main-form col-sm-12">

                    <asp:Panel ID="Panel1" runat="server" CssClass="homeFromPanel">
                        <table class="table home-table ">
                            <tr>
                                <td>
                                     <input id="txtDest" type="text" placeholder="Destination"/>
                                </td>
                                <td>
                                     <input id="txtCat" type="text" placeholder="Category"/>
                                </td>
                                <td class="auto-style1">
                                     <input id="txtPrice" type="text" placeholder="Price Range"/>
                                </td>
                                 <td class="auto-style1">
                                     <input id="btnSearch-main" class="btnSearch-main" type="button" value="Search"/>
                                </td>
                            </tr>
                        </table>
                       
                    </asp:Panel>

                </div>

        </div>
    </div>
</asp:Content>
