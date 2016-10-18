<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Funcionario.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <style type="text/css">
    .auto-style14 {
        margin-left: 80px;
    }
    .auto-style16 {
        margin-left: 56px;
    }
    .auto-style17 {
        margin-left: 82px;
    }
    .auto-style18 {
        margin-left: 83px;
    }
    .auto-style19 {
        margin-left: 85px;
    }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            color: #fff;
            text-shadow: 0 -1px 0 rgba(0, 0, 0, .2);
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 1px rgba(0, 0, 0, .075);
            filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
            border-color: #3e8f3e;
            margin-left: 345px;
            background-color: #5cb85c;
            background-image: url('linear-gradient(to%20bottom,#5cb85c 0,#419641 100%)');
            background-repeat: repeat-x;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
<br />
    <strong>
&nbsp;
<asp:Label ID="lblLogin" runat="server" Text="Login" CssClass="auto-style20"></asp:Label>
    </strong>
<asp:TextBox ID="txtLogin" runat="server" CssClass="auto-style19" Width="212px" OnTextChanged="txtLogin_TextChanged"></asp:TextBox>
    <em>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLogin" Display="Dynamic" ErrorMessage="Campo login é obrigatório"></asp:RequiredFieldValidator>
    </em>
<br />
<br />
    <strong>
&nbsp;
<asp:Label ID="Label3" runat="server" Text="Senha" CssClass="auto-style20"></asp:Label>
    </strong>
<asp:TextBox ID="txtSenha" runat="server" CssClass="auto-style18" Width="211px"></asp:TextBox>
    <em>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtLogin" ControlToValidate="txtSenha" ErrorMessage="Login e a Senha não podem ser iguais" Operator="NotEqual" Display="Dynamic">Login e a Senha tem que ser diferentes</asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSenha" Display="Dynamic" ErrorMessage="Campo senha é obrigatório"></asp:RequiredFieldValidator>
    </em>
<br />
<br />
    <strong>
&nbsp;
<asp:Label ID="Label2" runat="server" Text="Confirma" CssClass="auto-style20"></asp:Label>
    </strong>
<asp:TextBox ID="txtConfirma" runat="server" CssClass="auto-style16" Width="212px"></asp:TextBox>
    <em>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtConfirma" Display="Dynamic" ErrorMessage="Campo confirma é obrigatorio ">Informe os dados do campo confirma...</asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtConfirma" ErrorMessage="Campos Senha e Confirma tem que ser iguais" Display="Dynamic">Confirma e Senha tem valores diferentes</asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirma" Display="Dynamic" ErrorMessage="Campo confirma é obrigatório"></asp:RequiredFieldValidator>
    </em>
<br />
<br />
    <strong>
&nbsp;
<asp:Label ID="lblNome" runat="server" Text="Nome" CssClass="auto-style20"></asp:Label>
    </strong>
<asp:TextBox ID="txtNome" runat="server" CssClass="auto-style14" Width="212px"></asp:TextBox>
    <em>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNome" Display="Dynamic" ErrorMessage="Campo Nome é obrigatório"></asp:RequiredFieldValidator>
    </em>
<br />
<br />
    <strong>
&nbsp;
<asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="auto-style20"></asp:Label>
    </strong>
<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style17" Width="212px"></asp:TextBox>
    <em>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Campo email é obrigatório"></asp:RequiredFieldValidator>
    </em>
<br />
<br />
<br />
<asp:Button ID="btnEnviar" runat="server" CssClass="auto-style21" Height="45px" Text="Enviar" Width="109px" OnClick="btnEnviar_Click" />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

