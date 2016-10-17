<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            font-size: medium;
            margin-left: 67px;
        }
        .auto-style12 {
        margin-left: 285px;
    }
        .auto-style13 {
            font-size: xx-large;
        }
        .auto-style14 {
            margin-left: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style14">
        <span class="auto-style1"><span class="auto-style13">Lista de Clientes</span><br />
<br />
</span>
    <br />
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="276px" PageSize="5" Width="800px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
            <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
            <asp:BoundField DataField="endereco" HeaderText="Endereco" SortExpression="endereco" />
            <asp:BoundField DataField="cidade" HeaderText="Cidade" SortExpression="cidade" />
            <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="309px" CssClass="auto-style12">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
            <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ComicShop.Camadas.MODEL.Cliente" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="ComicShop.Camadas.BLL.Cliente" UpdateMethod="Update"></asp:ObjectDataSource>
</asp:Content>

