using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmPersoneller : Form
    {
        public FrmPersoneller()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void PersonelListele()
        {
            gridControl1.DataSource = context.TBL_PERSONELLER.ToList();
            temizle();
        }
        void temizle()
        {
            TxtAd.Text = "";
            TxtSoyad.Text = "";
            TxtID.Text = "";
            MskTc.Text = "";
            MskTelefon.Text = "";
            TxtGorev.Text = "";
            RchAdres.Text = "";
            TxtMail.Text = "";
            Cmbil.SelectedIndex = -1;
            CmbIlce.SelectedIndex = -1;

            TxtAd.Focus();

        }
        void SehirListesi()
        {

            var sehir = context.TBL_ILLER.ToList();

            for (int i = 0; i < sehir.Count; i++)
            {
                Cmbil.Properties.Items.Add(sehir[i].Sehir);
            }



        }


        private void FrmPersoneller_Load(object sender, EventArgs e)
        {
            PersonelListele();
            SehirListesi();

        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_PERSONELLER x = (TBL_PERSONELLER)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.ID.ToString();
                TxtAd.Text = x.Ad;
                TxtSoyad.Text = x.Soyad;
                MskTelefon.Text = x.Telefon;
                TxtGorev.Text = x.Gorev;
                MskTc.Text = x.TCNo;
                TxtMail.Text = x.Mail;
                Cmbil.Text = x.Sehir;
                CmbIlce.Text = x.Ilce;
                RchAdres.Text = x.Adres;

            }
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            TBL_PERSONELLER personel = new TBL_PERSONELLER
            {
                Ad = TxtAd.Text,
                Soyad = TxtSoyad.Text,
                Telefon = MskTelefon.Text,
                Gorev = TxtGorev.Text,
                TCNo = MskTc.Text,
                Mail = TxtMail.Text,
                Sehir = Cmbil.Text,
                Ilce = CmbIlce.Text,
                Adres = RchAdres.Text,
                


            };
            context.TBL_PERSONELLER.Add(personel);
            context.SaveChanges();


            MessageBox.Show("Personel Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            PersonelListele();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show("Personeli Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_PERSONELLER personel = context.TBL_PERSONELLER.Find(int.Parse(TxtID.Text));
                    context.TBL_PERSONELLER.Remove(personel);
                    context.SaveChanges();
                    MessageBox.Show("Personel Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    PersonelListele();
                }
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_PERSONELLER personel = new TBL_PERSONELLER
                {
                    ID = byte.Parse(TxtID.Text),
                    Ad = TxtAd.Text,
                    Soyad = TxtSoyad.Text,
                    Telefon = MskTelefon.Text,
                    Gorev = TxtGorev.Text,
                    TCNo = MskTc.Text,
                    Mail = TxtMail.Text,
                    Sehir = Cmbil.Text,
                    Ilce = CmbIlce.Text,
                    Adres = RchAdres.Text,



                };
                context.TBL_PERSONELLER.AddOrUpdate(personel);
                context.SaveChanges();
                MessageBox.Show("Personel Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                PersonelListele();
            }
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

       
    }
}
