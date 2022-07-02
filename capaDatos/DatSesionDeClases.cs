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
    public class DatSesionDeClases
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly DatSesionDeClases _instancia = new DatSesionDeClases();
        //privado para evitar la instanciación directa
        public static DatSesionDeClases Instancia
        {
            get
            {
                return DatSesionDeClases._instancia;
            }
        }
        ////////////////////listado de Clientes
        public List<EntSesionDeClase> ListaSesionD()
        {
            SqlCommand cmd = null;
            List<EntSesionDeClase> lista = new List<EntSesionDeClase>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListaSesionD", cn);//
                                                         // cmd = new SqlCommand("select * from Cliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;//
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntSesionDeClase SES = new EntSesionDeClase();
                    SES.fecha = Convert.ToDateTime(dr["fecha"]);
                    SES.sesionDeclase_id = Convert.ToInt32(dr["sesionDeClaseID"]);
                    SES.reprogramacion = Convert.ToDateTime(dr["reprogramacion"]);
                    SES.area_id = Convert.ToInt32(dr["areaID"]);
                    SES.silabo_id = Convert.ToInt32(dr["SilaboID"]);

                    lista.Add(SES);
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

        //inserta sesion
        public Boolean InsertarSesion(EntSesionDeClase ses)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarSesion", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fecha", ses.fecha);
                cmd.Parameters.AddWithValue("@SesionDeClaseID", ses.sesionDeclase_id);
                cmd.Parameters.AddWithValue("@Reprogramacion", ses.reprogramacion);
                cmd.Parameters.AddWithValue("@areaID", ses.area_id);
                cmd.Parameters.AddWithValue("@silaboID", ses.silabo_id);
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

        public Boolean ActualizarSesion(EntSesionDeClase ses)
        {
            SqlCommand cmd = null;

            Boolean actualiza = false;
            try
            {

                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ActualizarSesion", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SesionDeClaseID", ses.sesionDeclase_id);
                cmd.Parameters.AddWithValue("@Reprogramacion", ses.reprogramacion);
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
