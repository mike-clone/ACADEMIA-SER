using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace capaDatos
{
    public class Conexion
    {
        //patron de Diseño Singleton
        private static readonly Conexion _instancia = new Conexion();
        public static Conexion Instancia
        {
            get
            {
                return Conexion._instancia;
            }
        }
        public SqlConnection Conectar()
        {

            SqlConnection cn = new SqlConnection();
            //cn.ConnectionString = "Data Source = DESKTOP-R0RTQRL; Initial Catalog = academia_ser; Integrated Security = True";
            //cn.ConnectionString = "Data Source = LAPTOP-TIFHNC74\\SQLEXPRESS; Initial Catalog = academia_ser ; Integrated Security = True";          
           
            //cn.ConnectionString = "Data Source = MIKES; Initial Catalog = academia_ser ; Integrated Security = True";
            cn.ConnectionString = "Data Source = DESKTOP-RL2KS61\\SQLEXPRESS; Initial Catalog = academia_ser ; Integrated Security = True";
            

            return cn;
        }

    }
}
