using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaDatos;
using capaEntidad;
namespace capaLogica
{
    public class LogCuadernilloDePreguntas
    {
        private static readonly LogCuadernilloDePreguntas _instancia = new LogCuadernilloDePreguntas();
        //privado para evitar la instanciación directa
        public static LogCuadernilloDePreguntas Instancia
        {
            get
            {
                return LogCuadernilloDePreguntas._instancia;
            }

        }

        public List<EntCuadernilloDePreguntas> ListarCuadernillo()
        {
            return DatCuadernilloDePreguntas.Instancia.ListarCuadernillo();

        }

        public List<EntDetalleCuadernillo> ListarDetCuadernillo()
        {
            return DatCuadernilloDePreguntas.Instancia.ListarDetalle();

        }

        public void Insertarcuadernillo(EntCuadernilloDePreguntas cu)
        {
            DatCuadernilloDePreguntas.Instancia.InsertarCuadernillo(cu);
        }
        public void InsertDetCuadernillo(EntDetalleCuadernillo det)
        {
            DatCuadernilloDePreguntas.Instancia.InsertarDetalle(det);
        }
    }

   

}
