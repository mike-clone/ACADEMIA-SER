using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaEntidad;
using capaDatos;

namespace capaLogica
{
    public class logMatriz
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logMatriz _instancia = new logMatriz();
        //privado para evitar la instanciación directa
        public static logMatriz Instancia
        {
            get
            {
                return logMatriz._instancia;
            }
        }
        #endregion singleton        

        //LISTADO DE MATRIZ
        public List<entMatriz> ListarMatriz()
        {
            return datMatriz.Instancia.ListarMatriz();
        }

        //INSERCION DE MATRICES

        public void InsertarMatriz(entMatriz Cli)
        {
            
            datMatriz.Instancia.InsertarMatriz(Cli);
        }

        //EDITAR MATRICES

        public void EditarMatriz(entMatriz Cli)
        {
            datMatriz.Instancia.EditarMatriz(Cli);
        }
        
    }
}
