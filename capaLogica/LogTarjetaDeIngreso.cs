using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;
namespace capaLogica
{
    public class LogTarjetaDeIngreso
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly LogTarjetaDeIngreso _instancia = new LogTarjetaDeIngreso();
        //privado para evitar la instanciación directa
        public static LogTarjetaDeIngreso Instancia
        {
            get
            {
                return LogTarjetaDeIngreso._instancia;
            }
        }
        public List<EntTarjetaDeIngreso> ListarAlumnos()
        {
            return DatTarjetaDeIngreso.Instancia.ListarAlumnos();

        }
    }
}
