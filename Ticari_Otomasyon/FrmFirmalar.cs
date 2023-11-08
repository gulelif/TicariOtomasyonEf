using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmFirmalar : Form
    {
        public FrmFirmalar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void FirmaListesi()
        {
           
            gridControl1.DataSource = context.TBL_FIRMALAR.ToList();
            gridView1.Columns[gridView1.Columns.Count - 1].Visible = false;
        }
        void SehirListesi()
        {

            var sehir = context.TBL_ILLER.ToList();

            for (int i = 0; i < sehir.Count; i++)
            {
                Cmbil.Properties.Items.Add(sehir[i].Sehir);
            }

            temizle();

        }
        void temizle()
        {
            TxtAd.Text = "";
            TxtID.Text = "";
            TxtKod1.Text = "";
            TxtKod2.Text = "";
            TxtKod3.Text = "";
            TxtSektor.Text = "";
            TxtVergiD.Text = "";
            TxtYetkili.Text = "";
            TxtGorev.Text = "";
            MskFax.Text = "";
            MskTelefon1.Text = "";
            MskTelefon2.Text = "";
            MskTelefon3.Text = "";
            MskTc.Text = "";
            RchAdres.Text = "";
            Cmbil.SelectedIndex = -1;
            CmbIlce.SelectedIndex = -1;

            TxtAd.Focus();

        }

        void cariKodAciklamalar()
        {
            var kodlar = context.TBL_KODLAR.ToList();
            for (int i = 0; i < kodlar.Count; i++)
            {
                RchKod1.Text=(kodlar[0].FirmaKod1);
            }

        }
            private void FrmFirmalar_Load(object sender, EventArgs e)
        {
            FirmaListesi();
            SehirListesi();
            cariKodAciklamalar();
            temizle();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
             TBL_FIRMALAR x = (TBL_FIRMALAR)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.ID.ToString();
                TxtAd.Text = x.Ad;
                TxtGorev.Text = x.YetkiliStatu;
                TxtYetkili.Text = x.YetkiliAdSoyad;
                MskTc.Text = x.YetkiliTc;
                TxtSektor.Text = x.Sektor;
                MskTelefon1.Text = x.Telefon1;
                MskTelefon2.Text = x.Telefon2;
                MskTelefon3.Text = x.Telefon3;
                MskFax.Text = x.Fax;
                TxtMail.Text = x.Mail;
                Cmbil.Text = x.Sehir;
                CmbIlce.Text = x.Ilce;
                RchAdres.Text = x.Adres;
                TxtVergiD.Text = x.VergiDaire;
                TxtKod1.Text = x.OzelKod1;
                TxtKod2.Text = x.OzelKod2;
                TxtKod3.Text = x.OzelKod3;
            }
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show("Firmayı Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_FIRMALAR firma = context.TBL_FIRMALAR.Find(int.Parse(TxtID.Text));
                    context.TBL_FIRMALAR.Remove(firma);
                    context.SaveChanges();
                    MessageBox.Show("Firma Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    FirmaListesi();
                }
            }
        }

       
    }
}
