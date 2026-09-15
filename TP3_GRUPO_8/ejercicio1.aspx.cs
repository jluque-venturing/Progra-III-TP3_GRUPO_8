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
            ddlLocalidades.Items.Add(txtNombreLocalidad.Text.ToString());
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
    }
}