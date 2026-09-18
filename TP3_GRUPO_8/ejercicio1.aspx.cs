using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_8
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtNombreLocalidad.Text = "";
                txtNombreLocalidad.Focus();
                LimpiarUsuario();
            }
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            // Validar que el campo de texto no esté vacío.
            if ( !Page.IsValid ) return; 

            ddlLocalidades.Items.Add(txtNombreLocalidad.Text.Trim());
            txtNombreLocalidad.Text = "";
        }

        private void LimpiarUsuario()
        {
            TxtNameUser.Text = "";
            TxtPassword.Text = "";
            TxtRepeatPswrd.Text = "";
            txtCP.Text = "";
            txtMail.Text = "";
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblBienvenido.Text = "Bienvenido " + TxtNameUser.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void txtNombreLocalidad_TextChanged(object sender, EventArgs e)
        {

        }
        // Metodo para la validacion
        protected void cvLocalidadExistente_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Obtenemos la localidad ingresada por el usuario.
            string localidad_ingresada = args.Value.Trim(); // Eliminamos espacios en blanco.

            // Iteramos las localidades.
            foreach (ListItem item in ddlLocalidades.Items)
            {
                // Comparamos las localidades que ya estan en la lista con la ingresada por el usuario.
                if (item.Text.Trim().Equals(localidad_ingresada, StringComparison.OrdinalIgnoreCase))
                {
                    // Si la localidad existe no la agrega y sale de la iteracion.
                    args.IsValid = false;
                    return;
                }
            }
            // Si la localidad no esta en la lista la agrega
            args.IsValid = true;
        }
    }
}