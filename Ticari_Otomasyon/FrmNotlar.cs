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
    public partial class FrmNotlar : Form
    {
        public FrmNotlar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void NotlariListele()
        {
            gridControl1.DataSource = context.TBL_NOTLAR.ToList();
            Temizle();
        }
        void Temizle()
        {
            MskTarih.Text = "";
            TxtID.Text = "";
            MskSaat.Text = "";
            TxtBaslik.Text = "";
            TxtOlusturan.Text = "";
            TxtHitap.Text = "";
            RchDetay.Text = "";

        }

        private void FrmNotlar_Load(object sender, EventArgs e)
        {
            NotlariListele();
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            Temizle();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_NOTLAR x = (TBL_NOTLAR)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.ID.ToString();
                MskTarih.Text = x.Tarih.ToString();
                MskSaat.Text = x.Saat;
                TxtBaslik.Text = x.Baslik;
                TxtOlusturan.Text = x.Olusturan;
                RchDetay.Text = x.Detay;
                TxtHitap.Text = x.Hitap;
                

            }
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show("Notu Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_NOTLAR not = context.TBL_NOTLAR.Find(int.Parse(TxtID.Text));
                    context.TBL_NOTLAR.Remove(not);
                    context.SaveChanges();
                    MessageBox.Show("Not Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    NotlariListele();
                }
            }
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            TBL_NOTLAR not = new TBL_NOTLAR
            {
                Tarih = MskTarih.Text,
                Saat = MskSaat.Text,
                Baslik = TxtBaslik.Text,
                Olusturan = TxtOlusturan.Text,
                Hitap = TxtHitap.Text,
                Detay = RchDetay.Text,
              



            };
            context.TBL_NOTLAR.Add(not);
            context.SaveChanges();


            MessageBox.Show("Not Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            NotlariListele();
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_NOTLAR not = new TBL_NOTLAR
                {
                    ID = int.Parse(TxtID.Text),
                    Tarih = MskTarih.Text,
                    Saat = MskSaat.Text,
                    Baslik = TxtBaslik.Text,
                    Olusturan = TxtOlusturan.Text,
                    Hitap = TxtHitap.Text,
                    Detay = RchDetay.Text,




                };
                context.TBL_NOTLAR.AddOrUpdate(not);
                context.SaveChanges();
                MessageBox.Show("Not Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                NotlariListele();
            }
            }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            //not detayını gösteren sayfaya gider
            FrmNotDetay fr = new FrmNotDetay();
            TBL_NOTLAR x = (TBL_NOTLAR)gridView1.GetRow(gridView1.FocusedRowHandle);

            if (x != null)
            {
                fr.metin = x.Detay.ToString();

            }
            fr.Show();
        }

      
    }
}
