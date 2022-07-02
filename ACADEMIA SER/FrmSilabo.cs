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
    public partial class FrmSilabo : Form
    {
        public FrmSilabo()
        {
            
            InitializeComponent();
            grupBoxDatos.Enabled = false;

            listarSilabo();
        }


        public void listarSilabo()
        {
            dgvSilabo.DataSource = log_Silabo.Instancia.ListarSilabo();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            //insertar
            try
            {
                entSilabo c = new entSilabo();
                c.silaboID = int.Parse(txtIDsilabo.Text.Trim());
                c.nombre_tema = txtTema.Text.Trim();
                c.fecha_tema = dtPickerRegSilabo.Value;
                c.autor = txtAutor.Text.Trim();
                log_Silabo.Instancia.InsertaSilabo(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }

            listarSilabo();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            grupBoxDatos.Enabled = true;
            btnAgregar.Visible = true;
            LimpiarVariables();
            btnModificar.Visible = false;
        }
        private void LimpiarVariables()
        {
            txtAutor.Text = "";
            txtIDsilabo.Text = "";
            txtTema.Text = "";

        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                entSilabo c = new entSilabo();
                c.silaboID = int.Parse(txtIDsilabo.Text.Trim());
                c.nombre_tema = txtTema.Text.Trim();
                c.fecha_tema = dtPickerRegSilabo.Value;
                c.autor = txtAutor.Text.Trim();
                log_Silabo.Instancia.InsertaSilabo(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            LimpiarVariables();
            grupBoxDatos.Enabled = false;
            listarSilabo();

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void dgvSilabo_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            grupBoxDatos.Enabled = false;
            DataGridViewRow filaActual = dgvSilabo.Rows[e.RowIndex];
            txtIDsilabo.Text = filaActual.Cells[0].Value.ToString();
            txtTema.Text = filaActual.Cells[1].Value.ToString();
            dtPickerRegSilabo.Text = filaActual.Cells[2].Value.ToString();
            txtAutor.Text = filaActual.Cells[3].Value.ToString();

        }
    }
}
