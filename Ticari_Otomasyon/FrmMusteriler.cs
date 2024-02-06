using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmMusteriler : Form
    {
        public FrmMusteriler()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void MusteriListesi()
        {
            gridControl1.DataSource = context.TBL_MUSTERILER.ToList();
            temizle();
        }
        void SehirListesi()
        {
           
            var sehir = context.TBL_ILLER.ToList();

            for (int i = 0; i < sehir.Count; i++)
            {
                Cmbil.Properties.Items.Add(sehir[i].Sehir);
            }
        
         

        }
        private void FrmMusteriler_Load(object sender, EventArgs e)
        {
            MusteriListesi();
            SehirListesi();
        }

        private void Cmbil_SelectedIndexChanged(object sender, EventArgs e)
        {
            CmbIlce.Properties.Items.Clear();
            CmbIlce.SelectedIndex = 0;
            var ilce = context.TBL_ILCELER.Where(x => x.Sehir.Equals(Cmbil.SelectedIndex + 1)).ToList();
            for (int i = 0; i < ilce.Count; i++)
            {
                CmbIlce.Properties.Items.Add(ilce[i].Ilce);
            }
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            TBL_MUSTERILER musteri = new TBL_MUSTERILER
            {
                Ad = TxtAd.Text,
                Soyad = TxtSoyad.Text,
                Telefon = MskTelefon1.Text,
                Telefon2 = MskTelefon2.Text,
                TCNo = MskTc.Text,
                Mail = TxtMail.Text,
                Sehir = Cmbil.Text,
                Ilce = CmbIlce.Text,
                Adres = RchAdres.Text ,
                VergiDaire=TxtVergiD.Text


            };
            context.TBL_MUSTERILER.Add(musteri);
            context.SaveChanges();


            MessageBox.Show("Müşteri Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            MusteriListesi();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            DialogResult delete = new DialogResult();
            delete = MessageBox.Show("Müşteriyi Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (delete == DialogResult.Yes)
            {
                TBL_MUSTERILER musteri = context.TBL_MUSTERILER.Find(int.Parse(TxtID.Text));
                context.TBL_MUSTERILER.Remove(musteri);
                context.SaveChanges();
                MessageBox.Show("Müşteri Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                MusteriListesi();
            }

        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_MUSTERILER x = (TBL_MUSTERILER)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.ID.ToString();
                TxtAd.Text = x.Ad;
                TxtSoyad.Text = x.Soyad;
                MskTelefon1.Text = x.Telefon;
                MskTelefon2.Text = x.Telefon2;
                MskTc.Text = x.TCNo;
                TxtMail.Text = x.Mail;
                Cmbil.Text = x.Sehir;
                CmbIlce.Text = x.Ilce;
                RchAdres.Text = x.Adres;
                TxtVergiD.Text = x.VergiDaire;
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_MUSTERILER musteri = new TBL_MUSTERILER
                {
                    ID = short.Parse(TxtID.Text),
                    Ad = TxtAd.Text,
                    Soyad = TxtSoyad.Text,
                    Telefon = MskTelefon1.Text,
                    Telefon2 = MskTelefon2.Text,
                    TCNo = MskTc.Text,
                    Mail = TxtMail.Text,
                    Sehir = Cmbil.Text,
                    Ilce = CmbIlce.Text,
                    Adres = RchAdres.Text,
                    VergiDaire = TxtVergiD.Text


                };
                context.TBL_MUSTERILER.AddOrUpdate(musteri);
                context.SaveChanges();
                MessageBox.Show("Müşteri Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                MusteriListesi();
            }
        }
        void temizle()
        {
            TxtAd.Text = "";
            TxtSoyad.Text = "";
            TxtID.Text = "";
            MskTc.Text = "";
            MskTelefon1.Text = "";
            MskTelefon2.Text = "";
            RchAdres.Text = "";
            TxtMail.Text = "";
            TxtVergiD.Text = "";
            Cmbil.SelectedIndex = -1;
            CmbIlce.SelectedIndex = -1;

            TxtAd.Focus();

        }
        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

        
    }
}
