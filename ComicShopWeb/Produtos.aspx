<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: medium;
            margin-top: 0px;
            margin-right: 5px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">Lista de Produtos</span><br />
        <br />
        <br />
        <div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" Height="278px" PageSize="5" Width="801px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
                    <asp:BoundField DataField="titulo" HeaderText="Título" SortExpression="titulo" />
                    <asp:BoundField DataField="editora" HeaderText="Editora" SortExpression="editora" />
                    <asp:BoundField DataField="quantidade" HeaderText="Quantidade" SortExpression="quantidade" />
                    <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="318px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                <asp:BoundField DataField="editora" HeaderText="editora" SortExpression="editora" />
                <asp:BoundField DataField="quantidade" HeaderText="quantidade" SortExpression="quantidade" />
                <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ComicShop.Camadas.MODEL.HQ" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="ComicShop.Camadas.BLL.HQ" UpdateMethod="Update"></asp:ObjectDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
