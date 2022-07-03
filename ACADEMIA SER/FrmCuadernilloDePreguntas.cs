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
    public partial class FrmCuadernilloDePreguntas : Form
    {
        public FrmCuadernilloDePreguntas()
        {
            InitializeComponent();
            llenarDatosComboBancoP();
            llenarDatosComboSesion();
            listarCuadernillo();
        }

        private void llenarDatosComboBancoP()
        {
            CboBancoId.DataSource = LogBancoDePreguntas.Instancia.ListarBanco();
            CboBancoId.DisplayMember = "descripcion_pregunta";
            CboBancoId.ValueMember = "BancoDePreguntasID";

        }

     
        private void llenarDatosComboSesion()
        {
            CboSesion.DataSource = LogSesionDeClases.Instancia.ListarSesion();
            CboSesion.DisplayMember = "sesionDeclase_id";
            CboSesion.ValueMember = "sesionDeclase_id";

        }
        public void listarCuadernillo()
        {
            DgvCuadernillo.DataSource = LogCuadernilloDePreguntas.Instancia.ListarCuadernillo();
           
        }
        public void limpiar()
        {
            txtCuadernilloId.Text = "";
            txtDescripcion.Text = "";
            txtNumeroPregunta.Text = "";
            txtpreguntasTotales.Text = "";
            CboAlternativa.Text = "";
            CboSesion.Text = "";
          

        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                EntCuadernilloDePreguntas ses = new EntCuadernilloDePreguntas();
                ses.CuadernilloDePreguntasID = Convert.ToInt32(txtCuadernilloId.Text.Trim());
                ses.numero_pregunta= Convert.ToInt32(txtNumeroPregunta.Text.Trim());
                ses.descripcion_pregunta = (txtDescripcion.Text.Trim());
                ses.numeroTotal_preguntas = Convert.ToInt32(txtpreguntasTotales.Text.Trim());
                ses.alternativa_pregunta = char.Parse((string)CboAlternativa.Text);
                ses.BancoDePreguntasID = Convert.ToInt32(CboBancoId.SelectedValue);
                ses.SesionDeClaseID = Convert.ToInt32(CboSesion.SelectedValue);
                LogCuadernilloDePreguntas.Instancia.Insertarcuadernillo(ses);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            limpiar();
            listarCuadernillo();
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }
    }
}
