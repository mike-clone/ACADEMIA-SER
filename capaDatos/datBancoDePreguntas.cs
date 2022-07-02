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
    public class datBancoDePreguntas
    {

        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datBancoDePreguntas _instancia = new datBancoDePreguntas();
        //privado para evitar la instanciación directa
        public static datBancoDePreguntas Instancia
        {
            get
            {
                return datBancoDePreguntas._instancia;
            }
        }

        //ListaBancoDePreguntas
        public List<EntBancoDePreguntas> ListarBancoDePreguntas()
        {
            SqlCommand cmd = null;
            List<EntBancoDePreguntas> lista = new List<EntBancoDePreguntas>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListaBancoDePregunstas", cn);//
                                                                   // cmd = new SqlCommand("select * from Cliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;//
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntBancoDePreguntas Cli = new EntBancoDePreguntas();
                    Cli.BancoDePreguntasID = Convert.ToInt32(dr["BancoDePreguntasID"]);
                    Cli.numero_preguntas = Convert.ToInt32(dr["numero_preguntas"]);
                    Cli.opcion_pregunta = dr["opcion_pregunta"].ToString();
                    Cli.descripcion_pregunta = dr["descripcion_pregunta"].ToString();


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

        //Insertar 

        public Boolean InsertarBanco(EntBancoDePreguntas Cli)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarBancoDePregusntas", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BancoDePreguntasID", Cli.BancoDePreguntasID);
                cmd.Parameters.AddWithValue("@numero_preguntas", Cli.numero_preguntas);
                cmd.Parameters.AddWithValue("@opcion_pregunta", Cli.opcion_pregunta);
                cmd.Parameters.AddWithValue("@descripcion_pregunta", Cli.descripcion_pregunta);
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
        //edita cliente

        public Boolean ActualizarBanco(EntBancoDePreguntas Cli)
        {
            SqlCommand cmd = null;
            Boolean actualiza = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ActualizarBancoDePreguntas", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BancoDePreguntasID", Cli.BancoDePreguntasID);
                cmd.Parameters.AddWithValue("@numero_preguntas", Cli.numero_preguntas);
                cmd.Parameters.AddWithValue("@opcion_pregunta", Cli.opcion_pregunta);
                cmd.Parameters.AddWithValue("@descripcion_pregunta", Cli.descripcion_pregunta);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    actualiza = true;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally { cmd.Connection.Close(); }
            return actualiza;
        }
    }
}
