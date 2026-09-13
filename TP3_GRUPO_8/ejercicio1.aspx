<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3_GRUPO_8.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 297px">
    <form id="form1" runat="server">
       <div style="height: 189px">
            <table>
                <tr>
                    <td colspan="2">             
                        <asp:Label ID="lblLocalidadesTitulo" runat="server" Font-Bold="True" Font-Size="Large" Text="Localidades"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Nombre de Localidad:</td>
                     <td></td>
                    <td>
                        
                        <asp:TextBox ID="txtNombreLocalidad" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td></td>
                     <td></td>
                    <td>
                      <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Font-Italic="False" Font-Names="Arial" Height="21px" Width="151px" OnClick="btnGuardarLocalidad_Click" />  
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Usuarios"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Nombre usuario:"></asp:Label>
                    </td>
                     <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtNameUser" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
                    </td>
                     <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" OnTextChanged="TxtPassword_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Repetir Contraseña:"></asp:Label>
                    </td>
                     <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtRepeatPswrd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>