using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;
namespace capaLogica{
    public class LogAsistencia
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly LogAsistencia _instancia = new LogAsistencia();
        //privado para evitar la instanciación directa
        public static LogAsistencia Instancia
        {
            get
            {
                return LogAsistencia._instancia;
            }
        }
        public List<EntAsistencia> ListarAsistencia()
        {
            return DatAsistencia.Instancia.ListarAsistencia();

        }

        public void InsertarAsistencia(EntAsistencia Cli)
        {
            DatAsistencia.Instancia.InsertarAsistencia(Cli);
        }
        public void ActualizarCliente(EntAsistencia Cli)
        {
            DatAsistencia.Instancia.ActualizarCliente(Cli);
        }

    }
}
