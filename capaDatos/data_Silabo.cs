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
    public class data_Silabo
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly data_Silabo _instancia = new data_Silabo();
        //privado para evitar la instanciación directa
        public static data_Silabo Instancia
        {
            get
            {
                return data_Silabo._instancia;
            }
        }
        #endregion singleton 

        public List<entSilabo> ListarSilabo()
        {
            SqlCommand cmd = null;
            List<entSilabo> lista = new List<entSilabo>();//creando objeto lista
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("spListaSilabo", cn);
                //cmd = new SqlCommand("Select * from Silabo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader(); //SqlDataadapter : bd No Conectada
                while (dr.Read())
                {
                    entSilabo Sil = new entSilabo(); //objetoCliente
                    Sil.silaboID = Convert.ToInt32(dr["silaboID"]);
                    Sil.nombre_tema = dr["nombre_tema"].ToString();
                    Sil.fecha_tema = Convert.ToDateTime(dr["fecha_tema"]);
                    Sil.autor = dr["autor"].ToString();
                    lista.Add(Sil);
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

        //INSERTAR SILABO
        public Boolean InsertaSilabo(entSilabo Sil)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spInsertaSilabo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@silaboID", Sil.silaboID);
                cmd.Parameters.AddWithValue("@nombre_tema", Sil.nombre_tema);
                cmd.Parameters.AddWithValue("@fecha_tema", Sil.fecha_tema);
                cmd.Parameters.AddWithValue("@autor", Sil.autor);
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

        //ACTUALIZA O MODIFICA O EDITA SILABO
        public Boolean EditarSilabo(entSilabo Sil)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spEditaSilabo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@silaboID", Sil.silaboID);
                cmd.Parameters.AddWithValue("@nombre_tema", Sil.nombre_tema);
                cmd.Parameters.AddWithValue("@fecha_tema", Sil.fecha_tema);
                cmd.Parameters.AddWithValue("@autor", Sil.autor);
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
