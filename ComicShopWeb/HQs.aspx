<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HQs.aspx.cs" Inherits="HQs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            height: 636px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            margin-left: 82px;
        }
        .auto-style5 {
            margin-left: 64px;
        }
        .auto-style6 {
            margin-left: 85px;
        }
        .auto-style7 {
            margin-left: 39px;
        }
        .auto-style8 {
            font-size: large;
            margin-left: 104px;
        }
        .auto-style9 {
            font-size: large;
            margin-left: 128px;
        }
        .auto-style10 {
            font-size: large;
            margin-left: 112px;
        }
        .auto-style11 {
            font-size: large;
            margin-left: 153px;
        }
        .auto-style12 {
            font-size: large;
            margin-left: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
    &nbsp;<span class="auto-style1">Lista de HQs</span>&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:GridView ID="grvHqs" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" ForeColor="Black" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="titulo" HeaderText="Título" />
                <asp:BoundField DataField="editora" HeaderText="Editora" />
                <asp:BoundField DataField="valor" HeaderText="Valor" />
                <asp:BoundField DataField="quantidade" HeaderText="Quantidade" />
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
        <br /><strong>
        <br class="auto-style3" />
        </strong><span class="auto-style3"><strong>ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        </strong></span><strong>
        <br class="auto-style3" />
        <br class="auto-style3" />
        </strong><span class="auto-style3"><strong>Título:<asp:TextBox ID="txtTitulo" runat="server" CssClass="auto-style4" Width="173px"></asp:TextBox>
        </strong></span><strong>
        <br class="auto-style3" />
        <br class="auto-style3" />
        </strong><span class="auto-style3"><strong>Editora:
        <asp:TextBox ID="txtEditora" runat="server" CssClass="auto-style5" Width="176px"></asp:TextBox>
        </strong></span><strong>
        <br class="auto-style3" />
        <br class="auto-style3" />
        </strong><span class="auto-style3"><strong>Valor:<asp:TextBox ID="txtValor" runat="server" CssClass="auto-style6" Width="174px"></asp:TextBox>
        </strong></span><strong>
        <br class="auto-style3" />
        <br class="auto-style3" />
        </strong><span class="auto-style3"><strong>Quantidade:<asp:TextBox ID="txtQuantidade" runat="server" CssClass="auto-style7" Width="174px"></asp:TextBox>
        <br />
        <br />
        </strong></span>
        <br />
        <br class="auto-style3" />
        <br class="auto-style3" />
        <asp:Button ID="btnInserir" runat="server" CssClass="auto-style12" Height="34px" Text="Inserir" Width="100px" />
        <asp:Button ID="btnEditar" runat="server" CssClass="auto-style8" Height="36px" Text="Editar" Width="101px" />
        <asp:Button ID="btnRemover" runat="server" CssClass="auto-style9" Height="32px" Text="Remover" Width="102px" />
        <asp:Button ID="btnGravar" runat="server" CssClass="auto-style10" Height="33px" Text="Gravar" Width="100px" />
        <asp:Button ID="btnCancelar" runat="server" CssClass="auto-style11" Height="32px" Text="Cancelar" Width="99px" />
    
    </div>
    </form>
</body>
</html>
