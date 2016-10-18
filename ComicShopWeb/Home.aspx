<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="auto-style14">
        <strong>BemVindo!</strong></p>
    <p class="auto-style14">
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="Label"></asp:Label>
        </strong></p>
    <p class="auto-style14">
        &nbsp;</p>
</asp:Content>

