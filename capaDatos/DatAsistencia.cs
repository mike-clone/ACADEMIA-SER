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
    public class DatAsistencia
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly DatAsistencia _instancia = new DatAsistencia();
        //privado para evitar la instanciación directa
        public static DatAsistencia Instancia
        {
            get
            {
                return DatAsistencia._instancia;
            }
        }

        ////////////////////listado de Clientes
        public List<EntAsistencia> ListarAsistencia()
        {
            SqlCommand cmd = null;
            List<EntAsistencia> lista = new List<EntAsistencia>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("spListaAsistencia", cn);//
                                                              // cmd = new SqlCommand("select * from Cliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;//
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntAsistencia Cli = new EntAsistencia();
                    Cli.AsistenciaID = Convert.ToInt32(dr["AsistenciaID"]);
                    Cli.TarjetaDeIngresoID = Convert.ToInt32(dr["TarjetaDeIngresoID"]);
                    Cli.estado_asistencia = char.Parse((string)dr["estado_asistencia"]);
                    Cli.justificacion = char.Parse((string)dr["justificacion"]);
                    Cli.des_justificacion = dr["des_justificacion"].ToString();

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

        //inserta asistencia
        public Boolean InsertarAsistencia(EntAsistencia Cli)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spInsertarAsistencia", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@AsistenciaID", Cli.AsistenciaID);
                cmd.Parameters.AddWithValue("@TarjetaDeIngresoID", Cli.TarjetaDeIngresoID);
                cmd.Parameters.AddWithValue("@estado_asistencia", Cli.estado_asistencia);
                cmd.Parameters.AddWithValue("@justificacion", Cli.justificacion);
                cmd.Parameters.AddWithValue("@des_justificacion", Cli.des_justificacion);
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

        public Boolean ActualizarCliente(EntAsistencia Cli)
        {
            SqlCommand cmd = null;
            Boolean actualiza = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spActualizarAsistencia", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@AsistenciaID", Cli.AsistenciaID);
                cmd.Parameters.AddWithValue("@TarjetaDeIngresoID", Cli.TarjetaDeIngresoID);
                cmd.Parameters.AddWithValue("@estado_asistencia", Cli.estado_asistencia);
                cmd.Parameters.AddWithValue("@justificacion", Cli.justificacion);
                cmd.Parameters.AddWithValue("@des_justificacion", Cli.des_justificacion);
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
