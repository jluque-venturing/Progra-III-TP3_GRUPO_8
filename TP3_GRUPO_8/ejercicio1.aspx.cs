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
            }
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {

        }
    }
}