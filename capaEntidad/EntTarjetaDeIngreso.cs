using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
    public class EntTarjetaDeIngreso
    {
        public int TarjetaDeIngresoID { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public DateTime fecha_nacimiento { get; set; }
        public DateTime fecha_matricula { get; set; }
    }
}
