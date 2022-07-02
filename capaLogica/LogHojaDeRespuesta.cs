using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;

namespace capaLogica
{
 public class LogHojaDeRespuesta
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly LogHojaDeRespuesta _instancia = new LogHojaDeRespuesta();
        //privado para evitar la instanciación directa
        public static LogHojaDeRespuesta Instancia
        {
            get
            {
                return LogHojaDeRespuesta._instancia;
            }
        }

        public List<entHojaRespuesta> ListarHojaRespuesta()
        {
            return datHojaRespuesta.Instancia.ListarHojaRespuesta();

        }

        public void InsertarHojaRespuesta(entHojaRespuesta Cli)
        {
            datHojaRespuesta.Instancia.InsertarHojaRespuesta(Cli);
        }
        public void ActualizarHojaRespuesta(entHojaRespuesta Cli)
        {
            datHojaRespuesta.Instancia.ActualizarHojaRespuesta(Cli);
        }
    }
}
