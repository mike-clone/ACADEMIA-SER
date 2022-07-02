using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
    public class EntSesionDeClase
    {
        public DateTime fecha { set; get; }
        public int sesionDeclase_id { set; get; }
        public DateTime reprogramacion { set; get; }
        public int area_id { set; get; }
        public int silabo_id { set; get; }
    }
}
