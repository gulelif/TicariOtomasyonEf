using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Migrations;

namespace Ticari_Otomasyon
{
    public partial class FrmUrunler : Form
    {
        public FrmUrunler()
        {
            InitializeComponent();
        }

       
        DboTicariOtomasyonEntities1 context=new DboTicariOtomasyonEntities1();
        void UrunListele()
        {
            gridControl1.DataSource = context.TBL_URUNLER.ToList();
            gridView1.Columns[gridView1.Columns.Count - 1].Visible = false;
            gridView1.Columns[gridView1.Columns.Count - 2].Visible = false;
            temizle();
        }
        private void FrmUrunler_Load(object sender, EventArgs e)
        {
            UrunListele();
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            TBL_URUNLER urun = new TBL_URUNLER
            {
                UrunAd = TxtAd.Text,
                Model= TxtModel.Text,
                Marka=TxtMarka.Text,
                Yil=MskYil.Text,
                Detay=RchDetay.Text,
                Adet= (short?)NudAdet.Value,
                AlisFiyat = decimal.Parse(TxtAlis.Text),
                SatisFiyat = decimal.Parse(TxtSatis.Text)
            };
            context.TBL_URUNLER.Add(urun);
            context.SaveChanges();
            UrunListele();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
          
            TBL_URUNLER x = (TBL_URUNLER)gridView1.GetRow(gridView1.FocusedRowHandle);

            TxtID.Text = x.ID.ToString();
            TxtAd.Text = x.UrunAd;
            TxtMarka.Text = x.Marka;
            TxtModel.Text = x.Model;
            MskYil.Text =x.Yil;
            NudAdet.Value = int.Parse(x.Adet.ToString());
            TxtAlis.Text = x.AlisFiyat.ToString();
            TxtSatis.Text = x.SatisFiyat.ToString();
            RchDetay.Text = x.Detay;
        }


        private void BtnSil_Click(object sender, EventArgs e)
        {
            DialogResult delete = new DialogResult();
            delete = MessageBox.Show("Ürünü Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (delete == DialogResult.Yes)
            {
                TBL_URUNLER urun = context.TBL_URUNLER.Find(int.Parse(TxtID.Text));
                context.TBL_URUNLER.Remove(urun);
                context.SaveChanges();
                MessageBox.Show("Ürün Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                UrunListele();
            }

        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_URUNLER urun = new TBL_URUNLER
                {
                    ID = short.Parse(TxtID.Text),
                    UrunAd = TxtAd.Text,
                    Model = TxtModel.Text,
                    Marka = TxtMarka.Text,
                    Yil = MskYil.Text,
                    Detay = RchDetay.Text,
                    Adet = (short?)NudAdet.Value,
                    AlisFiyat = decimal.Parse(TxtAlis.Text),
                    SatisFiyat = decimal.Parse(TxtSatis.Text)


                };
                context.TBL_URUNLER.AddOrUpdate(urun);
                context.SaveChanges();
                MessageBox.Show("Ürün Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                UrunListele();
            }
        }

        void temizle()
        {
            TxtAd.Text = "";
            TxtID.Text = "";
            TxtMarka.Text = "";
            TxtModel.Text = "";
            MskYil.Text = "";
            NudAdet.Text = "";
            TxtAlis.Text = "";
            TxtSatis.Text = "";
            RchDetay.Text = "";

            TxtAd.Focus();
        }
        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

      
    }
}
