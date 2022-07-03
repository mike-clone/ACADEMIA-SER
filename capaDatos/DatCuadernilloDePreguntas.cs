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
   public class DatCuadernilloDePreguntas
    {
        private static readonly DatCuadernilloDePreguntas _instancia = new DatCuadernilloDePreguntas();
        //privado para evitar la instanciación directa
        public static DatCuadernilloDePreguntas Instancia
        {
            get
            {
                return DatCuadernilloDePreguntas._instancia;
            }
        }

        public List<EntCuadernilloDePreguntas> ListarCuadernillo()
        {
            SqlCommand cmd = null;
            List<EntCuadernilloDePreguntas> lista = new List<EntCuadernilloDePreguntas>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("Lista_cuadernillo", cn);//
                                                              
                cmd.CommandType = CommandType.StoredProcedure;//
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntCuadernilloDePreguntas cu = new EntCuadernilloDePreguntas();
                    cu.CuadernilloDePreguntasID = Convert.ToInt32(dr["CuadernilloDePreguntasID"]);
                    cu.numero_pregunta = Convert.ToInt32(dr["numero_pregunta"]);
                    cu.descripcion_pregunta = dr["descripcion_pregunta"].ToString();
                    cu.numeroTotal_preguntas= Convert.ToInt32(dr["numeroTotal_preguntas"]);
                    cu.alternativa_pregunta = char.Parse((string)dr["alternativa_pregunta"]);
                    cu.BancoDePreguntasID = Convert.ToInt32(dr["BancoDePreguntasID"]);
                    cu.SesionDeClaseID= Convert.ToInt32(dr["SesionDeClaseID"]);

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

        

        public Boolean InsertarCuadernillo(EntCuadernilloDePreguntas cu)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("Insertar_cuadernillo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CuadernilloDePreguntasID", cu.CuadernilloDePreguntasID);
                cmd.Parameters.AddWithValue("@numero_pregunta", cu.numeroTotal_preguntas);
                cmd.Parameters.AddWithValue("@descripcion_pregunta",cu.descripcion_pregunta);
                cmd.Parameters.AddWithValue("@numeroTotal_preguntas", cu.numeroTotal_preguntas);
                cmd.Parameters.AddWithValue("@alternativa_pregunta", cu.alternativa_pregunta);
                cmd.Parameters.AddWithValue("@BancoDePreguntasID", cu.BancoDePreguntasID);
                cmd.Parameters.AddWithValue("@SesionDeClaseID", cu.SesionDeClaseID);
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

        

    }
}
