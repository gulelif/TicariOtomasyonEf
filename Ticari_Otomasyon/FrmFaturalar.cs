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
    public partial class FrmFaturalar : Form
    {
        public FrmFaturalar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void FaturaListele()
        {
            gridControl1.DataSource = context.TBL_FATURABILGI.ToList();
            gridView1.Columns[gridView1.Columns.Count - 1].Visible = false;
            Temizle();

        }
        void Temizle()
        {
            TxtAlici.Text = "";
            TxtID.Text = "";
            TxtSeri.Text = "";
            TxtSiraNo.Text = "";
            TxtTeslimAlan.Text = "";
            TxtTeslimEden.Text = "";
            MskTarih.Text = "";
            MskSaat.Text = "";
            TxtVergiD.Text = "";
            TxtFaturaID.Text = "";
            TxtUrunAdi.Text = "";
            TxtMiktar.Text = "";
            TxtFiyat.Text = "";
            TxtTutar.Text = "";



        }
        private void FrmFaturalar_Load(object sender, EventArgs e)
        {
            FaturaListele();
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            Temizle();
        }
        double miktar, tutar, fiyat;

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            if (TxtFaturaID.Text == "")
            {
                TBL_FATURABILGI fatura = new TBL_FATURABILGI
                {

                    Seri = TxtSeri.Text,
                    SiraNo = TxtSiraNo.Text,
                    Tarih = MskTarih.Text,
                    Saat = MskSaat.Text,
                    Alici = TxtAlici.Text,
                    TeslimEden = TxtTeslimEden.Text,
                    TeslimAlan = TxtTeslimAlan.Text,
                    VergiDaire = TxtVergiD.Text

                };
                context.TBL_FATURABILGI.Add(fatura);
                context.SaveChanges();
                MessageBox.Show("Fatura Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {

                fiyat = Convert.ToDouble(TxtFiyat.Text);
                miktar = Convert.ToInt32(TxtMiktar.Text);
                tutar = fiyat * miktar;
                TxtTutar.Text = tutar.ToString();

                TBL_FATURADETAY faturadetay = new TBL_FATURADETAY
                {
                    UrunAd = TxtUrunAdi.Text,
                    Miktar = (short?)miktar,
                    Fiyat = (decimal?)fiyat,
                    Tutar = (decimal?)tutar,
                    FaturaID =Convert.ToInt32( TxtFaturaID.Text)

                };
                context.TBL_FATURADETAY.Add(faturadetay);
                context.SaveChanges();

                //Hareket tablosuna veri girişi
                //Firma Carisi
                if (comboBox1.Text == "Firma")
                {
                    TBL_FIRMAHAREKETLER hareket = new TBL_FIRMAHAREKETLER
                    {
                        UrunID = Convert.ToInt32(TxtUrunID.Text),
                        Adet = (byte?)miktar,
                        Personel = Convert.ToByte(TxtPersonel.Text),
                        Firma = Convert.ToByte(TxtAliciID.Text),
                        Fiyat = (decimal?)fiyat,
                        Toplam = (decimal?)tutar,
                        FaturaID = Convert.ToInt32(TxtFaturaID.Text),
                        Tarih = MskTarih.Text


                    };
                    context.TBL_FIRMAHAREKETLER.Add(hareket);
                    context.SaveChanges();
                }
                //Müşteri Carisi
                else
                {
                    TBL_MUSTERIHAREKETLER hareket = new TBL_MUSTERIHAREKETLER
                    {
                        UrunID = Convert.ToInt32(TxtUrunID.Text),
                        Adet = (byte?)miktar,
                        Personel = Convert.ToByte(TxtPersonel.Text),
                        Musteri = Convert.ToByte(TxtAliciID.Text),
                        Fiyat = (decimal?)fiyat,
                        Toplam = (decimal?)tutar,
                        FaturaID = Convert.ToInt32(TxtFaturaID.Text),
                        Tarih = MskTarih.Text


                    };
                    context.TBL_MUSTERIHAREKETLER.Add(hareket);
                    context.SaveChanges();
                }

                    //stok sayısını azaltma
                    TBL_URUNLER urun = context.TBL_URUNLER.Find(int.Parse(TxtUrunID.Text));
                int kalan = (int)(urun.Adet - miktar);
                
                TBL_URUNLER urun2 = new TBL_URUNLER
                {
                    Adet = (short?)kalan,
                    ID = Convert.ToInt32(TxtUrunID.Text)
                };

                  context.TBL_URUNLER.AddOrUpdate(urun2);
                context.SaveChanges();
                MessageBox.Show("Faturaya Ait Ürün Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }


            FaturaListele();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            DialogResult delete = new DialogResult();
            delete = MessageBox.Show("Faturayı Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (delete == DialogResult.Yes)
            {
                TBL_FATURABILGI fatura = context.TBL_FATURABILGI.Find(int.Parse(TxtID.Text));
                context.TBL_FATURABILGI.Remove(fatura);
                context.SaveChanges();
                MessageBox.Show("Fatura Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                FaturaListele();
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_FATURABILGI fatura = new TBL_FATURABILGI
                {
                    FaturaBilgiID = short.Parse(TxtID.Text),
                    Seri = TxtSeri.Text,
                    SiraNo = TxtSiraNo.Text,
                    Tarih = MskTarih.Text,
                    Saat = MskSaat.Text,
                    Alici = TxtAlici.Text,
                    TeslimEden = TxtTeslimEden.Text,
                    TeslimAlan = TxtTeslimAlan.Text,
                    VergiDaire = TxtVergiD.Text

                };
                context.TBL_FATURABILGI.AddOrUpdate(fatura);
                context.SaveChanges();
                MessageBox.Show("Fatura Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                FaturaListele();
            }
            }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_FATURABILGI x =(TBL_FATURABILGI) gridView1.GetRow(gridView1.FocusedRowHandle);
          
            if (x != null)
            {
                TxtID.Text = x.FaturaBilgiID.ToString();
                TxtSiraNo.Text = x.SiraNo.ToString();
                TxtSeri.Text = x.Seri.ToString();
                MskTarih.Text =x.Tarih.ToString();
                MskSaat.Text =x.Saat.ToString();
                TxtVergiD.Text =x.VergiDaire.ToString();
                TxtAlici.Text = x.Alici.ToString();
                TxtTeslimEden.Text = x.TeslimEden.ToString();
                TxtTeslimAlan.Text =x.TeslimAlan.ToString();
                TxtFaturaID.Text = x.FaturaBilgiID.ToString();
            }
        }

        private void BtnTemizle_Click_1(object sender, EventArgs e)
        {
            Temizle();
        }

        private void TxtMiktar_EditValueChanged(object sender, EventArgs e)
        {
            if (TxtFiyat.Text != "" && TxtMiktar.Text != "")
            {

                fiyat = Convert.ToDouble(TxtFiyat.Text);
                miktar = Convert.ToInt32(TxtMiktar.Text);
                tutar = fiyat * miktar;
                TxtTutar.Text = tutar.ToString();
            }
        }

     
        private void BtnBul_Click(object sender, EventArgs e)
        {
            TBL_URUNLER urun = context.TBL_URUNLER.Find(int.Parse(TxtUrunID.Text));
            if(urun!=null)
            {
            TxtUrunAdi.Text = urun.UrunAd;
            TxtFiyat.Text = urun.SatisFiyat.ToString(); }
            else
                MessageBox.Show("Ürün Bulunamadı!", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);


        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            FrmFaturaUrunler fr = new FrmFaturaUrunler();
            TBL_FATURABILGI x = (TBL_FATURABILGI)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                fr.id = x.FaturaBilgiID.ToString();

            }
            fr.Show();
        }
    }
}
