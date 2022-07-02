using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
    public class entHojaRespuesta
    {
        public int HojaDeRespuestaID { get; set; }

        public int numero_pregunta { get; set; }

        public int TarjetaDeIngresoID { get; set; }

        public char alternativa_pregunta { get; set; }
    }
}
