using DevExpress.Data.ODataLinq.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmKasa : Form
    {
        public FrmKasa()
        {
            InitializeComponent();
        }
        public string ad;
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void MusteriHareket()
        {
            gridControl1.DataSource = context.MusteriHareketler().ToList();


        }
        void FirmaHareket()
        {

            gridControl3.DataSource=context.FirmaHareketler().ToList();
          
        }
        void FaturaListele()
        {
            gridControl2.DataSource=context.TBL_GIDERLER.ToList();
        }
        private void FrmKasa_Load(object sender, EventArgs e)
        {
            LblAktifKullanici.Text = ad;
            MusteriHareket();
            FirmaHareket();
            FaturaListele();
            //Toplam Tutarı hesaplama
            LblKasaToplam.Text=context.TBL_FATURADETAY.Sum(s=>s.Tutar).ToString();
            //Son ayın faturaları
              LblOdemeler.Text = context.TBL_GIDERLER.OrderByDescending(x=>x.ID).Select(x => x.Elektrik + x.Su + x.Dogalgaz + x.Internet + x.Ekstra).First().ToString();
            // Son ayın personel maaşları
            LblPersonelMaaslari.Text = context.TBL_GIDERLER.OrderByDescending(a=>a.ID).Select(x => x.Maaslar).First().ToString();
            // Müsteri sayısı
            LblMusteriSayisi.Text = context.TBL_MUSTERILER.Count().ToString();
            // Firma sayısı
            LblFirmaSayisi.Text = context.TBL_FIRMALAR.Count().ToString();
            // Firma Şehir sayısı
            LblSehirSayisi.Text = context.TBL_FIRMALAR.Select(s => s.Sehir).Distinct().Count().ToString();
            // Müşteri Şehir sayısı
            LblSehirSayisi2.Text = context.TBL_MUSTERILER.Select(s => s.Sehir).Distinct().Count().ToString();
            // Personel sayısı
            LblPersonelSayisi.Text = context.TBL_MUSTERILER.Count().ToString();
            // Toplam Ürün sayısı
            LblStokSayisi.Text = context.TBL_URUNLER.Select(s => s.Adet).Count().ToString();

        }
        int sayac = 0;
        private void timer1_Tick(object sender, EventArgs e)
        {
            sayac++;
            //Elektrik
            if (sayac > 0 && sayac <= 5)
            {
                groupControl11.Text = "Elektrik";
                chartControl1.Series["Aylar"].Points.Clear();
                var elektrik = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Elektrik }).Take(5).ToList();
                for (int i = 0; i < elektrik.Count; i++)
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(elektrik[i].Ay, elektrik[i].Elektrik));

                }

            }
            //Su
            if (sayac > 5 && sayac <= 10)
            {
                groupControl11.Text = "Su";
                chartControl1.Series["Aylar"].Points.Clear();
                var su = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Su }).Take(5).ToList();
                for (int i = 0; i < su.Count; i++)
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(su[i].Ay, su[i].Su));

                }

            }
            //Doğalgaz
            if (sayac > 11 && sayac <= 15)
            {
                groupControl11.Text = "Doğalgaz";
                chartControl1.Series["Aylar"].Points.Clear();
                var dogalgaz = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Dogalgaz }).Take(5).ToList();
                for (int i = 0; i < dogalgaz.Count; i++)
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dogalgaz[i].Ay, dogalgaz[i].Dogalgaz));

                }
            }
            //İnternet
            if (sayac > 15 && sayac <= 20)
            {
                groupControl11.Text = "İnternet";
                chartControl1.Series["Aylar"].Points.Clear();
                var internet = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Internet }).Take(5).ToList();
                for (int i = 0; i < internet.Count; i++)
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(internet[i].Ay, internet[i].Internet));

                }
            }
            //Ekstra
            if (sayac > 20 && sayac <= 25)
            {
                groupControl11.Text = "Ekstra";
                chartControl1.Series["Aylar"].Points.Clear();
                var ekstra = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Ekstra }).Take(5).ToList();
                for (int i = 0; i < ekstra.Count; i++)
                {
                    chartControl1.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(ekstra[i].Ay, ekstra[i].Ekstra));

                }
            }
            if (sayac == 26)
            {
                sayac = 0;
            }

        }
        int sayac2;
        private void timer2_Tick(object sender, EventArgs e)
        {
            sayac2++;
            //Elektrik
            if (sayac2 > 0 && sayac2 <= 5)
            {
                groupControl10.Text = "Elektrik";
                chartControl2.Series["Aylar"].Points.Clear();
                var elektrik = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Elektrik }).Take(5).ToList();
                for (int i = 0; i < elektrik.Count; i++)
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(elektrik[i].Ay, elektrik[i].Elektrik));

                }

            }
            //Su
            if (sayac2 > 5 && sayac2 <= 10)
            {
                groupControl10.Text = "Su";
                chartControl2.Series["Aylar"].Points.Clear();
                var su = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Su }).Take(5).ToList();
                for (int i = 0; i < su.Count; i++)
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(su[i].Ay, su[i].Su));

                }

            }
            //Doğalgaz
            if (sayac2 > 11 && sayac2 <= 15)
            {
                groupControl10.Text = "Doğalgaz";
                chartControl2.Series["Aylar"].Points.Clear();
                var dogalgaz = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Dogalgaz }).Take(5).ToList();
                for (int i = 0; i < dogalgaz.Count; i++)
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(dogalgaz[i].Ay, dogalgaz[i].Dogalgaz));

                }
            }
            //İnternet
            if (sayac2 > 15 && sayac2 <= 20)
            {
                groupControl10.Text = "İnternet";
                chartControl2.Series["Aylar"].Points.Clear();
                var internet = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Internet }).Take(5).ToList();
                for (int i = 0; i < internet.Count; i++)
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(internet[i].Ay, internet[i].Internet));

                }
            }
            //Ekstra
            if (sayac2 > 20 && sayac2 <= 25)
            {
                groupControl10.Text = "Ekstra";
                chartControl2.Series["Aylar"].Points.Clear();
                var ekstra = context.TBL_GIDERLER.OrderByDescending(x => x.ID).Select(x => new { x.Ay, x.Ekstra }).Take(5).ToList();
                for (int i = 0; i < ekstra.Count; i++)
                {
                    chartControl2.Series["Aylar"].Points.Add(new DevExpress.XtraCharts.SeriesPoint(ekstra[i].Ay, ekstra[i].Ekstra));

                }
            }
            if (sayac2 == 26)
            {
                sayac2 = 0;
            }
        }
        void Timer1StartStop()
        {
            if (timer1.Enabled)
            {

                timer1.Enabled = false;
                timer1.Stop();
            }

            else
            {
                timer1.Enabled = true;
                timer1.Start();
            }
        }
        void Timer2StartStop()
        {
            if (timer2.Enabled == true)
            {
                timer2.Enabled = false;
                timer2.Stop();
            }

            else
            {
                timer2.Enabled = true;
                timer2.Start();
            }
        }

        private void chartControl2_MouseHover(object sender, EventArgs e)
        {
            Timer2StartStop();
        }

        private void chartControl1_MouseHover(object sender, EventArgs e)
        {
            Timer1StartStop();
        }
    }
}
