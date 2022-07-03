
namespace ACADEMIA_SER
{
    partial class FrmCuadernilloDePreguntas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtCuadernilloId = new System.Windows.Forms.TextBox();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtNumeroPregunta = new System.Windows.Forms.TextBox();
            this.CboSesion = new System.Windows.Forms.ComboBox();
            this.CboBancoId = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.CboAlternativa = new System.Windows.Forms.ComboBox();
            this.DgvCuadernillo = new System.Windows.Forms.DataGridView();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.txtpreguntasTotales = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.DgvCuadernillo)).BeginInit();
            this.SuspendLayout();
            // 
            // txtCuadernilloId
            // 
            this.txtCuadernilloId.Location = new System.Drawing.Point(51, 98);
            this.txtCuadernilloId.Name = "txtCuadernilloId";
            this.txtCuadernilloId.Size = new System.Drawing.Size(100, 22);
            this.txtCuadernilloId.TabIndex = 0;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(416, 98);
            this.txtDescripcion.Multiline = true;
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(276, 51);
            this.txtDescripcion.TabIndex = 2;
            // 
            // txtNumeroPregunta
            // 
            this.txtNumeroPregunta.Location = new System.Drawing.Point(184, 98);
            this.txtNumeroPregunta.Name = "txtNumeroPregunta";
            this.txtNumeroPregunta.Size = new System.Drawing.Size(100, 22);
            this.txtNumeroPregunta.TabIndex = 5;
            // 
            // CboSesion
            // 
            this.CboSesion.FormattingEnabled = true;
            this.CboSesion.Location = new System.Drawing.Point(34, 270);
            this.CboSesion.Name = "CboSesion";
            this.CboSesion.Size = new System.Drawing.Size(407, 24);
            this.CboSesion.TabIndex = 7;
            // 
            // CboBancoId
            // 
            this.CboBancoId.FormattingEnabled = true;
            this.CboBancoId.Location = new System.Drawing.Point(416, 183);
            this.CboBancoId.Name = "CboBancoId";
            this.CboBancoId.Size = new System.Drawing.Size(295, 24);
            this.CboBancoId.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(29, 66);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(117, 16);
            this.label1.TabIndex = 9;
            this.label1.Text = "CUADERNILLO ID";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(31, 236);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(128, 16);
            this.label3.TabIndex = 11;
            this.label3.Text = "SESION CLASES ID";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(474, 152);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(158, 16);
            this.label4.TabIndex = 12;
            this.label4.Text = "BANCO PREGUNTAS ID";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(29, 152);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(157, 16);
            this.label6.TabIndex = 14;
            this.label6.Text = "PREGUNTAS TOTALES";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(495, 66);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(98, 16);
            this.label7.TabIndex = 15;
            this.label7.Text = "DESCRIPCION";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(172, 66);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(146, 16);
            this.label8.TabIndex = 16;
            this.label8.Text = "NUMERO PREGUNTA";
            // 
            // CboAlternativa
            // 
            this.CboAlternativa.FormattingEnabled = true;
            this.CboAlternativa.Items.AddRange(new object[] {
            "A",
            "B",
            "C",
            "D"});
            this.CboAlternativa.Location = new System.Drawing.Point(241, 183);
            this.CboAlternativa.Name = "CboAlternativa";
            this.CboAlternativa.Size = new System.Drawing.Size(121, 24);
            this.CboAlternativa.TabIndex = 18;
            this.CboAlternativa.Text = "ALTERNATIVA";
            // 
            // DgvCuadernillo
            // 
            this.DgvCuadernillo.AllowUserToAddRows = false;
            this.DgvCuadernillo.AllowUserToDeleteRows = false;
            this.DgvCuadernillo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DgvCuadernillo.Location = new System.Drawing.Point(32, 336);
            this.DgvCuadernillo.Name = "DgvCuadernillo";
            this.DgvCuadernillo.ReadOnly = true;
            this.DgvCuadernillo.RowHeadersWidth = 51;
            this.DgvCuadernillo.RowTemplate.Height = 24;
            this.DgvCuadernillo.Size = new System.Drawing.Size(549, 384);
            this.DgvCuadernillo.TabIndex = 19;
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(613, 343);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(211, 60);
            this.btnAgregar.TabIndex = 22;
            this.btnAgregar.Text = "agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Location = new System.Drawing.Point(613, 466);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(211, 60);
            this.btnLimpiar.TabIndex = 23;
            this.btnLimpiar.Text = "Limpiar";
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(613, 572);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(211, 60);
            this.btnSalir.TabIndex = 24;
            this.btnSalir.Text = "salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // txtpreguntasTotales
            // 
            this.txtpreguntasTotales.Location = new System.Drawing.Point(34, 185);
            this.txtpreguntasTotales.Name = "txtpreguntasTotales";
            this.txtpreguntasTotales.Size = new System.Drawing.Size(157, 22);
            this.txtpreguntasTotales.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(262, 152);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 16);
            this.label2.TabIndex = 25;
            this.label2.Text = "ALTERNATIVA";
            // 
            // FrmCuadernilloDePreguntas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(875, 767);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnAgregar);
            this.Controls.Add(this.DgvCuadernillo);
            this.Controls.Add(this.CboAlternativa);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.CboBancoId);
            this.Controls.Add(this.CboSesion);
            this.Controls.Add(this.txtNumeroPregunta);
            this.Controls.Add(this.txtDescripcion);
            this.Controls.Add(this.txtpreguntasTotales);
            this.Controls.Add(this.txtCuadernilloId);
            this.Name = "FrmCuadernilloDePreguntas";
            this.Text = "FrmCuadernilloDePreguntas";
            ((System.ComponentModel.ISupportInitialize)(this.DgvCuadernillo)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtCuadernilloId;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtNumeroPregunta;
        private System.Windows.Forms.ComboBox CboSesion;
        private System.Windows.Forms.ComboBox CboBancoId;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox CboAlternativa;
        private System.Windows.Forms.DataGridView DgvCuadernillo;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.TextBox txtpreguntasTotales;
        private System.Windows.Forms.Label label2;
    }
}