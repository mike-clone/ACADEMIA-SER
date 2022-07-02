using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;
namespace capaLogica
{
    public class log_Silabo
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly log_Silabo _instancia = new log_Silabo();
        //privado para evitar la instanciación directa

        public static log_Silabo Instancia
        {
            get
            {
                return log_Silabo._instancia;
            }
        }
        #endregion singleton        



        //LISTADO DE SILABO
        public List<entSilabo> ListarSilabo()
        {
            return data_Silabo.Instancia.ListarSilabo();
        }

        //INSERCION DE SILABO

        public void InsertaSilabo(entSilabo Sil)
        {
            data_Silabo.Instancia.InsertaSilabo(Sil);
        }

        //EDITAR SILABO

        public void EditaSilabo(entSilabo Sil)
        {
            data_Silabo.Instancia.EditarSilabo(Sil);
        }
    }
}
