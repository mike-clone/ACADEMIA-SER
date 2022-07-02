using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using capaEntidad;
namespace capaDatos
{
    public  class DatArea
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly DatArea _instancia = new DatArea();
        //privado para evitar la instanciación directa
        public static DatArea Instancia
        {
            get
            {
                return DatArea._instancia;
            }
        }
        //ListaArea
        public List<EntArea> ListarArea()
        {
            SqlCommand cmd = null;
            List<EntArea> lista = new List<EntArea>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListaArea", cn);
                
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntArea Cli = new EntArea();
                    Cli.AreaId = Convert.ToInt32(dr["AreaId"]);
                    Cli.nombre = dr["nombre"].ToString();
                    Cli.docente = dr["docente"].ToString();
                    Cli.ciclo = Convert.ToInt32(dr["ciclo"]);

                    lista.Add(Cli);
                }

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return lista;

        }



    }
}
