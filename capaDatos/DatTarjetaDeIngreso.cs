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
    public class DatTarjetaDeIngreso
    {
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly DatTarjetaDeIngreso _instancia = new DatTarjetaDeIngreso();
        //privado para evitar la instanciación directa
        public static DatTarjetaDeIngreso Instancia
        {
            get
            {
                return DatTarjetaDeIngreso._instancia;
            }
        }
        public List<EntTarjetaDeIngreso> ListarAlumnos()
        {
            SqlCommand cmd = null;
            List<EntTarjetaDeIngreso> lista = new List<EntTarjetaDeIngreso>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("spLisTarjetaDeIngreso", cn);//
                                                              // cmd = new SqlCommand("select * from Cliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;//
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    EntTarjetaDeIngreso Cli = new EntTarjetaDeIngreso();
                    Cli.TarjetaDeIngresoID = Convert.ToInt32(dr["TarjetaDeIngresoID"]);
                    Cli.nombres = dr["nombres"].ToString();
                    Cli.apellidos = dr["apellidos"].ToString();
                    Cli.fecha_nacimiento = Convert.ToDateTime(dr["fecha_nacimiento"]);
                    Cli.fecha_matricula = Convert.ToDateTime(dr["fecha_nacimiento"]);

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
