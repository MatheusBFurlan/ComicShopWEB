<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Itens_Venda.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 66px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            font-size: xx-large;
        }
        .auto-style15 {
            margin-left: 40px;
        }
    .auto-style16 {
        margin-left: 319px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style15">
        <span class="auto-style1"><span class="auto-style14">Lista Itens Venda</span><br />
        <br />
        </span>
    </p>
    <div class="auto-style13">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="277px" Width="801px" CssClass="auto-style12" AllowPaging="True" PageSize="5">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
            <asp:BoundField DataField="venda_id" HeaderText="Venda ID" SortExpression="venda_id" />
            <asp:BoundField DataField="hq_id" HeaderText="HQ ID" SortExpression="hq_id" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" CssClass="auto-style16" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="130px" Width="230px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ComicShop.Camadas.MODEL.Itens_Venda" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="ComicShop.Camadas.BLL.Itens_Venda" UpdateMethod="Update" OnSelecting="ObjectDataSource1_Selecting"></asp:ObjectDataSource>
</asp:Content>

