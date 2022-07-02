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
    public class datHojaRespuesta
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datHojaRespuesta _instancia = new datHojaRespuesta();
        //privado para evitar la instanciación directa
        public static datHojaRespuesta Instancia
        {
            get
            {
                return datHojaRespuesta._instancia;
            }
        }

        ////////////////////listado de Clientes
        public List<entHojaRespuesta> ListarHojaRespuesta()
        {
            SqlCommand cmd = null;
            List<entHojaRespuesta> lista = new List<entHojaRespuesta>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListaHoja_Respueta", cn);//
                                                               // cmd = new SqlCommand("select * from Cliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;//
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entHojaRespuesta Cli = new entHojaRespuesta();
                    Cli.HojaDeRespuestaID = Convert.ToInt32(dr["HojaDeRespuestaID"]);
                    Cli.numero_pregunta = Convert.ToInt32(dr["numero_pregunta"]);
                    Cli.TarjetaDeIngresoID = Convert.ToInt32(dr["TarjetaDeIngresoID"]);
                    Cli.alternativa_pregunta = Convert.ToChar(dr["alternativa_pregunta"]); ;

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

        //Insertar Libro
        public Boolean InsertarHojaRespuesta(entHojaRespuesta Cli)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarHoja_Respuesta", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@HojaDeRespuestaID", Cli.HojaDeRespuestaID);
                cmd.Parameters.AddWithValue("@numero_pregunta", Cli.numero_pregunta);
                cmd.Parameters.AddWithValue("@TarjetaDeIngresoID", Cli.TarjetaDeIngresoID);
                cmd.Parameters.AddWithValue("@alternativa_pregunta", Cli.alternativa_pregunta);

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

        //Actualizar 
        public Boolean ActualizarHojaRespuesta(entHojaRespuesta Cli)
        {
            SqlCommand cmd = null;
            Boolean actualiza = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ActualizarHoja_Respuesta", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@HojaDeRespuestaID", Cli.HojaDeRespuestaID);
                cmd.Parameters.AddWithValue("@numero_pregunta", Cli.numero_pregunta);
                cmd.Parameters.AddWithValue("@TarjetaDeIngresoID", Cli.TarjetaDeIngresoID);
                cmd.Parameters.AddWithValue("@alternativa_pregunta", Cli.alternativa_pregunta);

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
