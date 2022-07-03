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
    public partial class Asistencia : Form
    {
        public Asistencia()
        {
            InitializeComponent();
            listarCliente();
            llenarDatosComboIdAlumno();
        }
        public void listarCliente()
        {
            dgvAsistenciaAlumno.DataSource = LogAsistencia.Instancia.ListarAsistencia();
        }
        private void llenarDatosComboIdAlumno()
        {
            cboTarjetaDeIngreso.DataSource = LogTarjetaDeIngreso.Instancia.ListarAlumnos();
            cboTarjetaDeIngreso.DisplayMember = "nombres";//nombres
            cboTarjetaDeIngreso.ValueMember = "TarjetaDeIngresoID";

        }
        public void limpiar()
        {
            txtAsistencia.Text = "";
            cboTarjetaDeIngreso.Text = "";
            txtDesJustificacion.Text = "";
            cboEstadoAsistencia.Text = "";
            cboJustificacion.Text = "";

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                EntAsistencia c = new EntAsistencia();
                c.AsistenciaID = int.Parse(txtAsistencia.Text.Trim());
                c.TarjetaDeIngresoID = Convert.ToInt32(cboTarjetaDeIngreso.SelectedValue);
                c.estado_asistencia = char.Parse((string)cboEstadoAsistencia.Text);
                c.justificacion = char.Parse((string)cboJustificacion.Text);
                c.des_justificacion = txtDesJustificacion.Text.Trim();
                LogAsistencia.Instancia.InsertarAsistencia(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            limpiar();
            listarCliente();
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                EntAsistencia c = new EntAsistencia();
                c.AsistenciaID = int.Parse(txtAsistencia.Text.Trim());
                c.TarjetaDeIngresoID = Convert.ToInt32(cboTarjetaDeIngreso.SelectedValue);
                c.estado_asistencia = char.Parse((string)cboEstadoAsistencia.Text);
                c.justificacion = char.Parse((string)cboJustificacion.Text);
                c.des_justificacion = txtDesJustificacion.Text.Trim();
                LogAsistencia.Instancia.ActualizarCliente(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            limpiar();
            listarCliente();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void dgvAsistenciaAlumno_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvAsistenciaAlumno.Rows[e.RowIndex]; //
            txtAsistencia.Text = filaActual.Cells[0].Value.ToString();
            cboTarjetaDeIngreso.Text = filaActual.Cells[1].Value.ToString();
            cboEstadoAsistencia.Text = filaActual.Cells[2].Value.ToString();
            cboJustificacion.Text = filaActual.Cells[3].Value.ToString();
            txtDesJustificacion.Text = filaActual.Cells[4].Value.ToString();
        }
       
        private void cboTarjetaDeIngreso_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
