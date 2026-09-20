<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3_GRUPO_8.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 138px;
        }

        .auto-style2 {
            width: 10px;
        }

        .auto-style3 {
            height: 25px;
        }

        .auto-style4 {
            width: 10px;
            height: 25px;
        }
        .auto-style5 {
            width: 138px;
            height: 42px;
        }
        .auto-style6 {
            height: 42px;
            width: 202px;
        }
        .auto-style7 {
            width: 202px;
        }
        .auto-style8 {
            height: 42px;
            width: 143px;
        }
        .auto-style9 {
            width: 143px;
        }
        .auto-style10 {
            width: 10px;
            height: 42px;
        }
    </style>
</head>
<body style="height: 370px">
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
                    <td class="auto-style2">&nbsp;</td>
                    <td>

                        <asp:TextBox ID="txtNombreLocalidad" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvLocalidad"
                            runat="server"
                            ControlToValidate="txtNombreLocalidad"
                            ErrorMessage="Ingrese localidad"
                            Text="Ingrese localidad"
                            ValidationGroup="Localidad" Display="Dynamic"></asp:RequiredFieldValidator>

                        <asp:CustomValidator
                            ID="cvLocalidadExistente"
                            runat="server"
                            ControlToValidate="txtNombreLocalidad"
                            ValidationGroup="Localidad"
                            ErrorMessage="Esa localidad ya existe"
                            OnServerValidate="cvLocalidadExistente_ServerValidate" Display="Dynamic"></asp:CustomValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style3">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Font-Italic="False" Font-Names="Arial" Height="21px" Width="151px" OnClick="btnGuardarLocalidad_Click" ValidationGroup="Localidad" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombreLocalidad" ErrorMessage="Localidad rechazada, ingresa otra localidad" ValidationExpression="^[a-zA-Z0-9\sáéíóúÁÉÍÓÚñÑ\.\-]+$" ValidationGroup="Localidad"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Usuarios"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Nombre usuario:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtNameUser" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNameUser" ErrorMessage="Campo Obligatorio, inserta nombre de usuario." ValidationGroup="Usuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Campo Obligatorio, Inserta contraseña" ValidationGroup="Usuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Repetir Contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtRepeatPswrd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtRepeatPswrd" ErrorMessage="Campo obligatorio, inserta contraseña" ValidationGroup="Usuario" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="comparePasswords" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtRepeatPswrd" Display="Dynamic" ErrorMessage="Las contraseñas no coinciden" ValidationGroup="Usuario">Las contraseñas no coinciden</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Correo electrónico: "></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMail" ErrorMessage="Campo Obligatorio, inserta correo" ValidationGroup="Usuario" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="validarCorreo" runat="server" ControlToValidate="txtMail" Display="Dynamic" ErrorMessage="Ingrese un correo electrónico válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Usuario">Ingrese un correo electrónico válido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="CP: "></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCP" ErrorMessage="Campo Obligatorio, ingresa correo postal" ValidationGroup="Usuario" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="validarCP" runat="server" ControlToValidate="txtCP" Display="Dynamic" ErrorMessage="El CP debe tener 4 dígitos" ValidationExpression="^\d{4}$" ValidationGroup="Usuario">El CP debe tener 4 dígitos</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Localidades:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidades" runat="server" Height="16px" Width="168px">
                            <asp:ListItem>Sin Localidad</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Campo Obligatorio, ingresa una localidad"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                </table>
            <table>
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style10"></td>
                        <td class="auto-style6">

                            <asp:Button ID="btnGuardarUsuario" runat="server" Height="21px" OnClick="btnGuardarUsuario_Click" Text="Guardar Usuario" Width="135px" ValidationGroup="Usuario" />

                        </td>
                        <td class="auto-style5">

                            <asp:Label ID="lblBienvenido" runat="server" Font-Bold="True"></asp:Label>

                        </td>
                    </tr>

                
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style1"></td>
                </tr>

                <tr>
                    <td class="auto-style9">

                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ir a Inicio.aspx" Width="141px" />

                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
