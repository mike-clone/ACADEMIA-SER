using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
    public class EntDetalleCuadernillo
    {
        public int CuadernilloDePreguntasID { set; get; }
        public int HojaDeRespuestaID{set;get;}
        public DateTime fecha_examen { set; get; }
    }
}
