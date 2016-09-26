using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class PersonasTelefonos
    {

        ConexionDb Conexion = new ConexionDb();

        public TiposTelefonos TipoTelefono { get; set; }



        public string Tipo
        {
            get { return this.TipoTelefono.ToString(); }
        }


        public string Telefono { get; set; }

        public PersonasTelefonos()
        {
            this.TipoTelefono = TiposTelefonos.Casa;
            this.Telefono = "";
        }
        public PersonasTelefonos(TiposTelefonos tipo, string telefono)
        {
            this.TipoTelefono = tipo;
            this.Telefono = telefono;
        }
    }
}
