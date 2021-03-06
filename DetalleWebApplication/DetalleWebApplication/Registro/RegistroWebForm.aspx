﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroWebForm.aspx.cs" Inherits="DetalleWebApplication.RegistroWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrapLoL.css" rel="stylesheet" type="text/css"/>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
    </style>
</head>
    

<body>
    <form id="form1" runat="server">
    <div>
    <div class ="container-fluid">
            <div class ="jumbotron" style="border:1px solid #888; box-shadow:0px 2px 5px #808080;">
                <h1 aria-autocomplete="none" style="background-color: #FFFFFF">Registro de personas: </h1>
            </div>
            <div class="col-md-4">
                Nombres:&nbsp;
                <asp:TextBox ID="NameTextBox" runat="server" Width="347px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Favor ingresar el nombre" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                Sexo:
                <asp:RadioButton ID="MRadioButton" runat="server" Text="Masculino" />
&nbsp;<asp:RadioButton ID="FRadioButton" runat="server" Text="Femenino" />
                <br />
                <br />
                <br />
                Telefono:&nbsp;
                <asp:TextBox ID="TelefonoTexBox" runat="server" TextMode="Phone"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Tipo de Telefono:&nbsp;<asp:DropDownList ID="TipoTelefonoDropDownList" runat="server" Width="448px">
                </asp:DropDownList>
                <br />
                <br />
            </div>
            <div class="auto-style1">
                <br />
                &nbsp;<asp:Button ID="AddButton" CssClass ="btn btn-primary" runat="server" OnClick="AddButton_Click" style="height: 29px" Text="Agregar" />
                &nbsp;
                <br />
                <asp:GridView ID="TelefonosGridView" runat="server" Width="309px">
                </asp:GridView>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Guardar" cssclass="btn btn-success"/>
            </div>
            
        </div>
    </div>
    </form>
    <script src ="scripts/jquery-3.1.0.js" ></script>
    <script src ="scripts/bootstrap.min.css"></script>
</body>
</html>
