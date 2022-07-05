using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using capaEntidad;
using capaLogica;
namespace ACADEMIA_SER
{
    public partial class FrmDetalle : Form
    {
        public FrmDetalle()
        {
            InitializeComponent();
            listarDetalle();
            llenarDatosComboIdrespuesta();
            llenarDatosComboidCuadernillo();
        }
        public void listarDetalle()
        {
            dgvDetalle.DataSource = LogDetalleCuadernilloRespuesta.Instancia.ListarDetalle();
        }
        private void llenarDatosComboIdrespuesta()
        {
            cboHojaDeRespuestaId.DataSource = LogHojaDeRespuesta.Instancia.ListarHojaRespuesta();
            cboHojaDeRespuestaId.DisplayMember = "HojaDeRespuestaID";
            cboHojaDeRespuestaId.ValueMember = "HojaDeRespuestaID";

        }
        private void llenarDatosComboidCuadernillo()
        {
            cboCuadernilloID.DataSource = LogCuadernilloDePreguntas.Instancia.ListarCuadernillo();
            cboCuadernilloID.DisplayMember = "CuadernilloDePreguntasID";
            cboCuadernilloID.ValueMember = "CuadernilloDePreguntasID";

        }
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                EntDetalleCuadernillo c = new EntDetalleCuadernillo();
                c.CuadernilloDePreguntasID = Convert.ToInt32(cboCuadernilloID.SelectedValue);
                c.HojaDeRespuestaID = Convert.ToInt32(cboHojaDeRespuestaId.SelectedValue);
                c.fecha_examen = dtpFechaExamen.Value;
                LogDetalleCuadernilloRespuesta.Instancia.InsertarEnDetalle(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            //limpiar();
            listarDetalle();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                EntDetalleCuadernillo c = new EntDetalleCuadernillo();
                c.CuadernilloDePreguntasID = Convert.ToInt32(cboCuadernilloID.SelectedValue);
                c.HojaDeRespuestaID = Convert.ToInt32(cboHojaDeRespuestaId.SelectedValue);
                c.fecha_examen = dtpFechaExamen.Value;
                LogDetalleCuadernilloRespuesta.Instancia.ActualizarDetalle(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            //limpiar();
            listarDetalle();
        }
    }
}
