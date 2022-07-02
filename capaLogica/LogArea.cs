using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaEntidad;
using capaDatos;
namespace capaLogica
{
    public class LogArea
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly LogArea _instancia = new LogArea();
        //privado para evitar la instanciación directa
        public static LogArea Instancia
        {
            get
            {
                return LogArea._instancia;
            }
        }
        public List<EntArea> ListarArea()
        {
            return DatArea.Instancia.ListarArea();
        }
    }
}
