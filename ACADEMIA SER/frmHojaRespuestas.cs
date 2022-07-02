using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using capaLogica;
using capaEntidad;

namespace ACADEMIA_SER
{
    public partial class frmHojaRespuestas : Form
    {

        public frmHojaRespuestas()
        {
            InitializeComponent();
            listaHojaRespuesta();
            llenarDatosTarjetaDeIngresoId();
        }

        private void llenarDatosTarjetaDeIngresoId()
        {
            cboTarjetaDeIngreso.DataSource = LogTarjetaDeIngreso.Instancia.ListarAlumnos();
            cboTarjetaDeIngreso.DisplayMember = "nombres";
            cboTarjetaDeIngreso.ValueMember = "TarjetaDeIngresoID";
        }

        private void btnInsertar_Click(object sender, EventArgs e)
        {
            try
            {



                entHojaRespuesta c = new entHojaRespuesta();
                c.HojaDeRespuestaID = int.Parse(txtIdHojaRespuesta.Text.Trim());
                c.numero_pregunta = int.Parse(txtNumPreguntaHR.Text.Trim());
                c.TarjetaDeIngresoID = Convert.ToInt32(cboTarjetaDeIngreso.SelectedValue);
                c.alternativa_pregunta = char.Parse(CbAlterHojaRespuesta.Text.Trim());

                LogHojaDeRespuesta.Instancia.InsertarHojaRespuesta(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }

            listaHojaRespuesta();
            Limpiar();
        }
        public void listaHojaRespuesta()
        {
            dgHojaRespuesta.DataSource = LogHojaDeRespuesta.Instancia.ListarHojaRespuesta();
        }
        public void Limpiar()
        {
            txtIdHojaRespuesta.Clear();
            txtNumPreguntaHR.Clear();
            CbAlterHojaRespuesta.Text = " ";

        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {

                entHojaRespuesta c = new entHojaRespuesta();
                c.HojaDeRespuestaID = int.Parse(txtIdHojaRespuesta.Text.Trim());
                c.numero_pregunta = int.Parse(txtNumPreguntaHR.Text.Trim());
                c.TarjetaDeIngresoID = Convert.ToInt32(cboTarjetaDeIngreso.SelectedValue);
                c.alternativa_pregunta = char.Parse(CbAlterHojaRespuesta.Text.Trim());

                LogHojaDeRespuesta.Instancia.ActualizarHojaRespuesta(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }

            listaHojaRespuesta();
            Limpiar();
        }

        private void btnCancealr_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void cboTarjetaDeIngreso_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
