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
    public partial class FormularioBancoDePreguntas : Form
    {
        public FormularioBancoDePreguntas()
        {
            InitializeComponent();
            ListarBancoDePreguntas();
        }

        public void ListarBancoDePreguntas()
        {
            dgvBancoDePreguntas.DataSource = LogBancoDePreguntas.Instancia.ListarBanco();
        }
        private void Limpiar()
        {
            txtDesBan.Clear();
            txtidBanco.Clear();
            txtNumPre.Clear();
            cbA.Checked = false;
            CbB.Checked = false;
            cbC.Checked = false;
            cbD.Checked = false;

        }
        private void FormularioBancoDePreguntas_Load(object sender, EventArgs e)
        {

        }

        private void pbAgregar_Click(object sender, EventArgs e)
        {
            String op = null;

            if (cbA.Checked == true)
            {
                op = "A";

            }
            else
            {
                if (CbB.Checked == true)
                {
                    op = "B";
                }
                else
                {
                    if (cbC.Checked == true)
                    {
                        op = "C";
                    }
                    else
                    {
                        op = "D";
                    }
                }

            }

            try
            {

                EntBancoDePreguntas c = new EntBancoDePreguntas();
                c.BancoDePreguntasID = int.Parse(txtidBanco.Text.Trim());
                c.numero_preguntas = int.Parse(txtNumPre.Text.Trim());
                c.opcion_pregunta = op.ToString();
                c.descripcion_pregunta = txtDesBan.Text.Trim();

                LogBancoDePreguntas.Instancia.InsertarBanco(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            Limpiar();
            ListarBancoDePreguntas();
        }

        private void pbActualizar_Click(object sender, EventArgs e)
        {
            String op = null;

            if (cbA.Checked == true)
            {
                op = "A";

            }
            else
            {
                if (CbB.Checked == true)
                {
                    op = "B";
                }
                else
                {
                    if (cbC.Checked == true)
                    {
                        op = "C";
                    }
                    else
                    {
                        op = "D";
                    }
                }


            }

            try
            {
                EntBancoDePreguntas c = new EntBancoDePreguntas();
                c.BancoDePreguntasID = int.Parse(txtidBanco.Text.Trim());
                c.numero_preguntas = int.Parse(txtNumPre.Text.Trim());
                c.opcion_pregunta = op;
                c.descripcion_pregunta = txtDesBan.Text.Trim();

                LogBancoDePreguntas.Instancia.ActualizarPregunta(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            Limpiar();
            ListarBancoDePreguntas();
        }
       

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void pbSalir_Click(object sender, EventArgs e)
        {
            Dispose();
        }
    }
}
