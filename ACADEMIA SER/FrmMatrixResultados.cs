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
    public partial class FrmMatrixResultados : Form
    {
        public FrmMatrixResultados()
        {
            InitializeComponent();
            groupBox1.Enabled = false;
            //txtMatrizDeResultadosID.Enabled = false;
            ListarMatriz();
            llenarDatosComboIdHoja();
        }
        public void ListarMatriz()
        {
            dgvMatriz.DataSource = logMatriz.Instancia.ListarMatriz();
        }
        private void LimpiarVariables()
        {
             txtobservacion.Text = "";
             dtPickerRegMatriz.Text = "";  
        }
        private void llenarDatosComboIdHoja()
        {
            cboHojaDeRespuestasId.DataSource = LogHojaDeRespuesta.Instancia.ListarHojaRespuesta();
            cboHojaDeRespuestasId.DisplayMember = "numero_pregunta";//nombres
            cboHojaDeRespuestasId.ValueMember = "HojaDeRespuestaID";

        }
        private void btnNuevo_Click(object sender, EventArgs e)
        {
            groupBox1.Enabled = true;
            btnAgregar.Visible = true;
            LimpiarVariables();
            btnModificar.Visible = false;

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            groupBox1.Enabled = true;
            btnModificar.Visible = true;
            btnAgregar.Visible = false;

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {

            //insertar
            try
            {

                entMatriz c = new entMatriz();
                c.MatrizDeResultadosID = int.Parse(txtMatrizDeResultadosID.Text.Trim());
                c.HojaDeRespuestaID = Convert.ToInt32(cboHojaDeRespuestasId.SelectedValue);
                c.observacion = txtobservacion.Text.Trim();
                c.fecha = dtPickerRegMatriz.Value;

                logMatriz.Instancia.InsertarMatriz(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            LimpiarVariables();
            groupBox1.Enabled = false;
            ListarMatriz();    //refress

        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                entMatriz c = new entMatriz();
                c.MatrizDeResultadosID = int.Parse(txtMatrizDeResultadosID.Text.Trim());
                c.HojaDeRespuestaID = Convert.ToInt32(cboHojaDeRespuestasId.SelectedValue);
                c.observacion = txtobservacion.Text.Trim();
                c.fecha = dtPickerRegMatriz.Value;

                logMatriz.Instancia.EditarMatriz(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            LimpiarVariables();
            groupBox1.Enabled = false;
            ListarMatriz();//SE ACTIVA EL LISTAR MATRIZ

        }
    }
}
