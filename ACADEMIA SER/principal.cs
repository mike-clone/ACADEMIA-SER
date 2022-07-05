using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ACADEMIA_SER
{
    public partial class principal : Form
    {
        public principal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Asistencia acercade = new Asistencia();
            acercade.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            FormularioBancoDePreguntas acercadeb = new FormularioBancoDePreguntas();
            acercadeb.Show();
        }

        private void btnSesion_Click(object sender, EventArgs e)
        {
            FrmSesionDeClases f = new FrmSesionDeClases();
            f.Show();
        }

        private void btnSilabo_Click(object sender, EventArgs e)
        {
            FrmSilabo f = new FrmSilabo();
            f.Show();
        }

        private void btnHojaRespuesta_Click(object sender, EventArgs e)
        {
            frmHojaRespuestas acercadeb = new frmHojaRespuestas();
            acercadeb.Show();
        }

        private void btnPreguntas_Click(object sender, EventArgs e)
        {
        }

        private void button3_Click(object sender, EventArgs e)
        {
            FrmDetalle ar = new FrmDetalle();
            ar.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {

            FrmCuadernilloDePreguntas f = new FrmCuadernilloDePreguntas();
            f.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            FrmMatrixResultados yey = new FrmMatrixResultados();
            yey.Show(); 

        }

        private void button5_Click_1(object sender, EventArgs e)
        {
            Dispose();
        }
    }
}
