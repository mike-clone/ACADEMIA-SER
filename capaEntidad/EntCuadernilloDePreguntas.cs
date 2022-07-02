using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capaEntidad
{
	public class EntCuadernilloDePreguntas
	{
		public int CuadernilloDePreguntasID { get; set; }
		public int numero_pregunta { get; set; }
		public string descripcion_pregunta { get; set; }
		public int numeroTotal_preguntas {set ;get;}
		public char alternativa_pregunta { get; set; }
		public int BancoDePreguntasID { get; set; }
	    public int SesionDeClaseID { get; set; }
	}
}
