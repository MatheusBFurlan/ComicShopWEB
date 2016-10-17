<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            text-align: center;
        }
        .auto-style2 {
            font-size: medium;
            margin-top: 0px;
            margin-right: 5px;
        margin-left: 59px;
    }
        .auto-style12 {
        text-align: left;
    }
    .auto-style13 {
        margin-left: 295px;
    }
        .auto-style14 {
            width: 100%;
            height: 698px;
            font-size: xx-large;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style15">
        <span class="auto-style14">Lista de Produtos</span><br />
    <br />
    <br />
    </p>
    <div class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="272px" PageSize="5" Width="800px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
                <asp:BoundField DataField="titulo" HeaderText="Título" SortExpression="titulo" />
                <asp:BoundField DataField="editora" HeaderText="Editora" SortExpression="editora" />
                <asp:BoundField DataField="quantidade" HeaderText="Quantidade" SortExpression="quantidade" />
                <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
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
    &nbsp;</div>
    <br />
    <br />
    <div class="auto-style12">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="318px" CssClass="auto-style13">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
            <asp:BoundField DataField="editora" HeaderText="editora" SortExpression="editora" />
            <asp:BoundField DataField="quantidade" HeaderText="quantidade" SortExpression="quantidade" />
            <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    </div>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ComicShop.Camadas.MODEL.HQ" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="ComicShop.Camadas.BLL.HQ" UpdateMethod="Update"></asp:ObjectDataSource>
</asp:Content>

