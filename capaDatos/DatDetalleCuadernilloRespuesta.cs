using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using capaEntidad;
using System.Data;
using System.Data.SqlClient;
namespace capaDatos
{
    public class DatDetalleCuadernilloRespuesta
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly DatDetalleCuadernilloRespuesta _instancia = new DatDetalleCuadernilloRespuesta();
        //privado para evitar la instanciación directa
        public static DatDetalleCuadernilloRespuesta Instancia
        {
            get
            {
                return DatDetalleCuadernilloRespuesta._instancia;
            }
        }
        //listar
        public List<EntDetalleCuadernillo> ListarDetalle()
        {
            SqlCommand cmd = null;
            List<EntDetalleCuadernillo> lista = new List<EntDetalleCuadernillo>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); 
                cmd = new SqlCommand("Lista_Detalle", cn);

                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntDetalleCuadernillo cu = new EntDetalleCuadernillo();
                    cu.CuadernilloDePreguntasID = Convert.ToInt32(dr["CuadernilloDePreguntasID"]);
                    cu.HojaDeRespuestaID = Convert.ToInt32(dr["HojaDeRespuestaID"]);
                    cu.fecha_examen = Convert.ToDateTime(dr["fecha_examen"]);
                    lista.Add(cu);
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
        //insertar
        public Boolean InsertarEnDetalle(EntDetalleCuadernillo cu)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarDetalle", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CuadernilloDePreguntasID", cu.CuadernilloDePreguntasID);
                cmd.Parameters.AddWithValue("@HojaDeRespuestaID", cu.HojaDeRespuestaID);
                cmd.Parameters.AddWithValue("@fecha_examen", cu.fecha_examen);
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

        //actualizar
        public Boolean ActualizarDetalle(EntDetalleCuadernillo Cli)
        {
            SqlCommand cmd = null;
            Boolean actualiza = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ActualizarDetalle", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CuadernilloDePreguntasID", Cli.CuadernilloDePreguntasID);
                cmd.Parameters.AddWithValue("@HojaDeRespuestaID", Cli.HojaDeRespuestaID);
                cmd.Parameters.AddWithValue("@fecha_examen", Cli.fecha_examen);
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
