namespace Ticari_Otomasyon
{
    partial class FrmAdmin
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmAdmin));
            this.label3 = new System.Windows.Forms.Label();
            this.BtnGirisYap = new System.Windows.Forms.Button();
            this.TxtParola = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.TxtKullaniciAdi = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.TxtParola.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtKullaniciAdi.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Swis721 BlkCn BT", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(215, 316);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(166, 19);
            this.label3.TabIndex = 11;
            this.label3.Text = "Ticari Otomasyon-2023";
            // 
            // BtnGirisYap
            // 
            this.BtnGirisYap.BackColor = System.Drawing.Color.SteelBlue;
            this.BtnGirisYap.Font = new System.Drawing.Font("Swis721 BlkCn BT", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.BtnGirisYap.Location = new System.Drawing.Point(434, 201);
            this.BtnGirisYap.Name = "BtnGirisYap";
            this.BtnGirisYap.Size = new System.Drawing.Size(119, 30);
            this.BtnGirisYap.TabIndex = 10;
            this.BtnGirisYap.Text = "Giriş Yap";
            this.BtnGirisYap.UseVisualStyleBackColor = false;
            this.BtnGirisYap.Click += new System.EventHandler(this.BtnGirisYap_Click);
            // 
            // TxtParola
            // 
            this.TxtParola.Location = new System.Drawing.Point(434, 157);
            this.TxtParola.Name = "TxtParola";
            this.TxtParola.Properties.Appearance.Font = new System.Drawing.Font("Swis721 BlkCn BT", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TxtParola.Properties.Appearance.Options.UseFont = true;
            this.TxtParola.Properties.UseSystemPasswordChar = true;
            this.TxtParola.Size = new System.Drawing.Size(139, 26);
            this.TxtParola.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Swis721 BlkCn BT", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(368, 164);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 19);
            this.label2.TabIndex = 8;
            this.label2.Text = "Parola:";
            // 
            // TxtKullaniciAdi
            // 
            this.TxtKullaniciAdi.Location = new System.Drawing.Point(434, 117);
            this.TxtKullaniciAdi.Name = "TxtKullaniciAdi";
            this.TxtKullaniciAdi.Properties.Appearance.Font = new System.Drawing.Font("Swis721 BlkCn BT", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.TxtKullaniciAdi.Properties.Appearance.Options.UseFont = true;
            this.TxtKullaniciAdi.Size = new System.Drawing.Size(139, 26);
            this.TxtKullaniciAdi.TabIndex = 7;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Swis721 BlkCn BT", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(329, 124);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(96, 19);
            this.label1.TabIndex = 6;
            this.label1.Text = "Kullanıcı Adı:";
            // 
            // FrmAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(598, 344);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.BtnGirisYap);
            this.Controls.Add(this.TxtParola);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.TxtKullaniciAdi);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmAdmin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmAdmin";
            ((System.ComponentModel.ISupportInitialize)(this.TxtParola.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtKullaniciAdi.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button BtnGirisYap;
        private DevExpress.XtraEditors.TextEdit TxtParola;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.TextEdit TxtKullaniciAdi;
        private System.Windows.Forms.Label label1;
    }
}