using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;
namespace capaLogica
{
    public class LogSesionDeClases
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly LogSesionDeClases _instancia = new LogSesionDeClases();
        //privado para evitar la instanciación directa
        public static LogSesionDeClases Instancia
        {
            get
            {
                return LogSesionDeClases._instancia;
            }
        }
        public List<EntSesionDeClase> ListarSesion()
        {
            return DatSesionDeClases.Instancia.ListaSesionD();

        }
        public void InsertarSesion(EntSesionDeClase ses)
        {
            DatSesionDeClases.Instancia.InsertarSesion(ses);
        }

        public void ActualizarSesion(EntSesionDeClase ses)
        {
            DatSesionDeClases.Instancia.ActualizarSesion(ses);
        }
    }
}
