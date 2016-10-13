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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="279px" HorizontalAlign="Center" PageSize="5" Width="725px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="titulo" HeaderText="Título" SortExpression="titulo" />
                    <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                    <asp:BoundField DataField="quantidade" HeaderText="Quantidade" SortExpression="quantidade" />
                    <asp:BoundField DataField="editora" HeaderText="Editora" SortExpression="editora" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:COMICSHOPConnectionString %>" DeleteCommand="DELETE FROM [HQs] WHERE [id] = @id" InsertCommand="INSERT INTO [HQs] ([titulo], [valor], [quantidade], [editora]) VALUES (@titulo, @valor, @quantidade, @editora)" SelectCommand="SELECT * FROM [HQs]" UpdateCommand="UPDATE [HQs] SET [titulo] = @titulo, [valor] = @valor, [quantidade] = @quantidade, [editora] = @editora WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="titulo" Type="String" />
                <asp:Parameter Name="valor" Type="Double" />
                <asp:Parameter Name="quantidade" Type="Int32" />
                <asp:Parameter Name="editora" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="titulo" Type="String" />
                <asp:Parameter Name="valor" Type="Double" />
                <asp:Parameter Name="quantidade" Type="Int32" />
                <asp:Parameter Name="editora" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
