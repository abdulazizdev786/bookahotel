<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BookAHotel.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/master.css" rel="stylesheet" />
     <link href="Content/landing.css" rel="stylesheet" />
     <link href="Content/responsive.css" rel="stylesheet" />

    <div class="intro-header">
        <div class="container">
                <div class="col-sm-12">      
                    <div class=" intro-message">
                        <h1>Hotel Booking</h1>
                        <h3>Welcome <%=Session["userName"].ToString() %> </h3>
                    </div>
                </div>
                <div class="main-form col-sm-12">

                    <asp:Panel ID="homePanel" runat="server" CssClass="homeFromPanel">
                        <table class="table home-table ">
                            <tr class="row m-0">
                                <td class="col-12 col-sm-3">
                                     <input id="txtDest" type="text" placeholder="Destination"/>
                                </td>
                                <td class="col-12 col-sm-3">
                                     <input id="txtCat" type="text" placeholder="Category"/>
                                </td>
                                <td class="col-12 col-sm-3">
                                     <input id="txtPrice" type="text" placeholder="Price Range"/>
                                </td>
                                 <td class="col-12 col-sm-3">
                                     <input id="btnSearch-main" class="btnSearch-main" type="button" value="Search"/>
                                </td>
                            </tr>
                        </table>
                       
                    </asp:Panel>

                </div>

        </div>
    </div>

</asp:Content>
