using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;
namespace capaLogica
{
    public class LogDetalleCuadernilloRespuesta
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly LogDetalleCuadernilloRespuesta instancia = new LogDetalleCuadernilloRespuesta();
        //privado para evitar la instanciación directa
        public static LogDetalleCuadernilloRespuesta Instancia
        {
            get
            {
                return LogDetalleCuadernilloRespuesta.instancia;
            }
        }
        //LISTADO DE SILABO
        public List<EntDetalleCuadernillo> ListarDetalle()
        {
            return DatDetalleCuadernilloRespuesta.Instancia.ListarDetalle();
        }

        //INSERCION DE SILABO

        public void InsertarEnDetalle(EntDetalleCuadernillo cn)
        {
            DatDetalleCuadernilloRespuesta.Instancia.InsertarEnDetalle(cn);
        }

        //EDITAR SILABO

        public void ActualizarDetalle(EntDetalleCuadernillo Sil)
        {
            DatDetalleCuadernilloRespuesta.Instancia.ActualizarDetalle(Sil);
        }
    }
}
