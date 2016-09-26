using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DetalleWebApplication
{
    public partial class RegistroWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TipoTelefonoDropDownList.DataSource = Enum.GetValues(typeof(TiposTelefonos));
                TipoTelefonoDropDownList.DataBind();
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Personas persona;//declarando la variable

            if (Session["Persona"] == null) //si es la primera vez (cuando esta null)
                Session["Persona"] = new Personas(); //instanciar la persona dentro de la session


            persona = (Personas)Session["Persona"];//siempre asignamos la session a la variable local

            TiposTelefonos tipo;

            tipo = (TiposTelefonos)Enum.Parse(typeof(TiposTelefonos), TipoTelefonoDropDownList.SelectedValue);

            persona.AgregarTelefono(tipo, TelefonoTexBox.Text);

            Session["Persona"] = persona;//guardar en la session para que no se pierdan los datos de la persona.

            TelefonosGridView.DataSource = persona.Telefonos;
            TelefonosGridView.DataBind();

            TelefonoTexBox.Text = "";
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Personas persona;

            if (Session["Persona"] == null) //si es la primera vez (cuando esta null)
                Session["Persona"] = new Personas(); //instanciar la persona dentro de la session

            persona = (Personas)Session["Persona"];//siempre asignamos la session a la variable local

            persona.Nombre = NameTextBox.Text;

            if (MRadioButton.Checked == true)
                persona.Sexo = "M";
            else
                persona.Sexo = "F";

            if (persona.Insertar())
            {
               // PersonaIdTextBox.Text = persona.PersonaId.ToString();

                Page.ClientScript.RegisterStartupScript(this.GetType(),
                "toastr_message", "toastr.success('There was an error', 'Error')", true);

            }
        }
    }
}