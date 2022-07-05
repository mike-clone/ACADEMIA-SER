namespace ACADEMIA_SER
{
    partial class Asistencia
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
            this.txtDesJustificacion = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtAsistencia = new System.Windows.Forms.TextBox();
            this.txtAsistenciaId = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cboTarjetaDeIngreso = new System.Windows.Forms.ComboBox();
            this.cboJustificacion = new System.Windows.Forms.ComboBox();
            this.cboEstadoAsistencia = new System.Windows.Forms.ComboBox();
            this.dgvAsistenciaAlumno = new System.Windows.Forms.DataGridView();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnActualizar = new System.Windows.Forms.Button();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAsistenciaAlumno)).BeginInit();
            this.SuspendLayout();
            // 
            // txtDesJustificacion
            // 
            this.txtDesJustificacion.Location = new System.Drawing.Point(330, 237);
            this.txtDesJustificacion.Multiline = true;
            this.txtDesJustificacion.Name = "txtDesJustificacion";
            this.txtDesJustificacion.Size = new System.Drawing.Size(280, 39);
            this.txtDesJustificacion.TabIndex = 9;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(16, 194);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(157, 29);
            this.label3.TabIndex = 3;
            this.label3.Text = "Justificacion";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(6, 247);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(251, 29);
            this.label4.TabIndex = 4;
            this.label4.Text = "descrip Justificacion";
            // 
            // txtAsistencia
            // 
            this.txtAsistencia.Location = new System.Drawing.Point(330, 31);
            this.txtAsistencia.Multiline = true;
            this.txtAsistencia.Name = "txtAsistencia";
            this.txtAsistencia.Size = new System.Drawing.Size(280, 39);
            this.txtAsistencia.TabIndex = 7;
            // 
            // txtAsistenciaId
            // 
            this.txtAsistenciaId.AutoSize = true;
            this.txtAsistenciaId.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtAsistenciaId.Location = new System.Drawing.Point(16, 30);
            this.txtAsistenciaId.Name = "txtAsistenciaId";
            this.txtAsistenciaId.Size = new System.Drawing.Size(157, 29);
            this.txtAsistenciaId.TabIndex = 0;
            this.txtAsistenciaId.Text = "AsistenciaID";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(6, 89);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(242, 29);
            this.label1.TabIndex = 1;
            this.label1.Text = "TarjetaDeIngresoID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(6, 142);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(220, 29);
            this.label2.TabIndex = 2;
            this.label2.Text = "Estado Asistencia";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.groupBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.groupBox1.Controls.Add(this.cboTarjetaDeIngreso);
            this.groupBox1.Controls.Add(this.cboJustificacion);
            this.groupBox1.Controls.Add(this.cboEstadoAsistencia);
            this.groupBox1.Controls.Add(this.txtDesJustificacion);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtAsistencia);
            this.groupBox1.Controls.Add(this.txtAsistenciaId);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Font = new System.Drawing.Font("Palatino Linotype", 10.2F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(33, 29);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(737, 292);
            this.groupBox1.TabIndex = 16;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "ASISTENCIA ALUMNO";
            // 
            // cboTarjetaDeIngreso
            // 
            this.cboTarjetaDeIngreso.FormattingEnabled = true;
            this.cboTarjetaDeIngreso.Location = new System.Drawing.Point(330, 90);
            this.cboTarjetaDeIngreso.Name = "cboTarjetaDeIngreso";
            this.cboTarjetaDeIngreso.Size = new System.Drawing.Size(280, 33);
            this.cboTarjetaDeIngreso.TabIndex = 12;
            this.cboTarjetaDeIngreso.Text = "<seleciona>";
            this.cboTarjetaDeIngreso.SelectedIndexChanged += new System.EventHandler(this.cboTarjetaDeIngreso_SelectedIndexChanged);
            // 
            // cboJustificacion
            // 
            this.cboJustificacion.FormattingEnabled = true;
            this.cboJustificacion.Items.AddRange(new object[] {
            "0",
            "1"});
            this.cboJustificacion.Location = new System.Drawing.Point(330, 190);
            this.cboJustificacion.Name = "cboJustificacion";
            this.cboJustificacion.Size = new System.Drawing.Size(280, 33);
            this.cboJustificacion.TabIndex = 11;
            this.cboJustificacion.Text = "<seleciona>";
            // 
            // cboEstadoAsistencia
            // 
            this.cboEstadoAsistencia.FormattingEnabled = true;
            this.cboEstadoAsistencia.Items.AddRange(new object[] {
            "T",
            "A",
            "F"});
            this.cboEstadoAsistencia.Location = new System.Drawing.Point(330, 143);
            this.cboEstadoAsistencia.Name = "cboEstadoAsistencia";
            this.cboEstadoAsistencia.Size = new System.Drawing.Size(280, 33);
            this.cboEstadoAsistencia.TabIndex = 10;
            this.cboEstadoAsistencia.Text = "<seleciona>";
            // 
            // dgvAsistenciaAlumno
            // 
            this.dgvAsistenciaAlumno.AllowUserToDeleteRows = false;
            this.dgvAsistenciaAlumno.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAsistenciaAlumno.Location = new System.Drawing.Point(33, 337);
            this.dgvAsistenciaAlumno.Name = "dgvAsistenciaAlumno";
            this.dgvAsistenciaAlumno.ReadOnly = true;
            this.dgvAsistenciaAlumno.RowHeadersWidth = 51;
            this.dgvAsistenciaAlumno.RowTemplate.Height = 24;
            this.dgvAsistenciaAlumno.Size = new System.Drawing.Size(737, 227);
            this.dgvAsistenciaAlumno.TabIndex = 21;
            this.dgvAsistenciaAlumno.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvAsistenciaAlumno_CellDoubleClick);
            // 
            // btnSalir
            // 
            this.btnSalir.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnSalir.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalir.Location = new System.Drawing.Point(847, 364);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(196, 57);
            this.btnSalir.TabIndex = 20;
            this.btnSalir.Text = "SALIR";
            this.btnSalir.UseVisualStyleBackColor = false;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnCancelar.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.Location = new System.Drawing.Point(847, 276);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(196, 57);
            this.btnCancelar.TabIndex = 19;
            this.btnCancelar.Text = "CANCELAR";
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnActualizar
            // 
            this.btnActualizar.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnActualizar.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnActualizar.Location = new System.Drawing.Point(847, 164);
            this.btnActualizar.Name = "btnActualizar";
            this.btnActualizar.Size = new System.Drawing.Size(196, 57);
            this.btnActualizar.TabIndex = 18;
            this.btnActualizar.Text = "ACTUALIZAR";
            this.btnActualizar.UseVisualStyleBackColor = false;
            this.btnActualizar.Click += new System.EventHandler(this.btnActualizar_Click);
            // 
            // btnAgregar
            // 
            this.btnAgregar.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.btnAgregar.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAgregar.Location = new System.Drawing.Point(847, 67);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(196, 57);
            this.btnAgregar.TabIndex = 17;
            this.btnAgregar.Text = "AGREGAR";
            this.btnAgregar.UseVisualStyleBackColor = false;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // Asistencia
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(1107, 638);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvAsistenciaAlumno);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnActualizar);
            this.Controls.Add(this.btnAgregar);
            this.Name = "Asistencia";
            this.Text = "Asistencia";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAsistenciaAlumno)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox txtDesJustificacion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtAsistencia;
        private System.Windows.Forms.Label txtAsistenciaId;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cboJustificacion;
        private System.Windows.Forms.ComboBox cboEstadoAsistencia;
        private System.Windows.Forms.DataGridView dgvAsistenciaAlumno;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnActualizar;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.ComboBox cboTarjetaDeIngreso;
    }
}