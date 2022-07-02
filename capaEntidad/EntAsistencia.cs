using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
    public class EntAsistencia
    {
        public int AsistenciaID { get; set; }
        public int TarjetaDeIngresoID { get; set; }
        public char estado_asistencia { get; set; }
        public char justificacion { get; set; }
        public string des_justificacion { get; set; }
    }
}
