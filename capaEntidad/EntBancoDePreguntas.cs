using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
    public class EntBancoDePreguntas
    {
        public int BancoDePreguntasID { get; set; }
        public int numero_preguntas { get; set; }
        public string opcion_pregunta { get; set; }
        public string descripcion_pregunta { get; set; }
    }
}
