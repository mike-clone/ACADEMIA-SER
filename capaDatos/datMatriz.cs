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
    public class datMatriz
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datMatriz _instancia = new datMatriz();
        //privado para evitar la instanciación directa
        public static datMatriz Instancia
        {
            get
            {
                return datMatriz._instancia;
            }
        }
        #endregion singleton  

        //LISTADO DE CLIENTES
        public List<entMatriz> ListarMatriz()
        {
            SqlCommand cmd = null;
            List<entMatriz> lista = new List<entMatriz>();//creando objeto lista
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("spListarMatriz", cn);
                //cmd = new SqlCommand("Select * from Cliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader(); //SqlDataadapter : bd No Conectada
                while (dr.Read())
                {
                    entMatriz Cli = new entMatriz(); //objetoCliente
                    Cli.MatrizDeResultadosID = Convert.ToInt32(dr["MatrizDeResultadosID"]);
                    Cli.HojaDeRespuestaID = Convert.ToInt32(dr["HojaDeRespuestaID"]);
                    Cli.observacion = dr["observacion"].ToString();                    
                    Cli.fecha = Convert.ToDateTime(dr["fecha"]);                    
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

        //INSERTAR CLIENTE
        public Boolean InsertarMatriz(entMatriz resultados)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spInsertarMatriz", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MatrizDeResultadosID", resultados.MatrizDeResultadosID);
                cmd.Parameters.AddWithValue("@HojaDeRespuestaID", resultados.HojaDeRespuestaID);
                cmd.Parameters.AddWithValue("@observacion", resultados.observacion);
                cmd.Parameters.AddWithValue("@fecha", resultados.fecha);                
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    inserta = true;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally { cmd.Connection.Close(); }
            return inserta;
        }


        //ACTUALIZA O MODIFICA O EDITA CLIENTE
        public Boolean EditarMatriz(entMatriz Cli)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spEditarMatriz", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MatrizDeResultadosID", Cli.MatrizDeResultadosID);
                cmd.Parameters.AddWithValue("@HojaDeRespuestaID", Cli.HojaDeRespuestaID);
                cmd.Parameters.AddWithValue("@observacion", Cli.observacion);
                cmd.Parameters.AddWithValue("@fecha", Cli.fecha);                
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    edita = true;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally { cmd.Connection.Close(); }
            return edita;
        }        

    }
}
