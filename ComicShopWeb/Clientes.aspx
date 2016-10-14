<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" %>

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
            margin-left: 0px;
        }
        .auto-style3 {
            height: 616px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <span class="auto-style1">Lista de Clientes<br />
        </span>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" Height="276px" PageSize="6" Width="800px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                <asp:BoundField DataField="endereco" HeaderText="Endereco" SortExpression="endereco" />
                <asp:BoundField DataField="cidade" HeaderText="Cidade" SortExpression="cidade" />
                <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
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
        <br />
        <br />
        <div>
        </div>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Locadora.Camadas.MODEL.Cliente" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="Locadora.Camadas.BLL.Cliente" UpdateMethod="Update"></asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
