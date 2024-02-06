using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmAnasayfa : Form
    {
        public FrmAnasayfa()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void AzalanStoklar()
        {
           
            gridControlStoklar.DataSource = context.TBL_URUNLER.GroupBy(x=>x.UrunAd)
                .Select(grp => new
                {
                    Ad=grp.Key,
                    kAdet=grp.Sum(x=>x.Adet)
                }).Where(x=>x.kAdet<=20).OrderBy(x => x.kAdet).ToList();

        }
        void Ajanda()
        {
           
            gridControlAjanda.DataSource = context.TBL_NOTLAR.OrderByDescending(x=>x.ID).Select(x=> new
            {
               Tarih= x.Tarih,
                Saat= x.Saat,
                Baslik = x.Baslik
            }).Take(10).ToList();
        }
        //void Son10Hareket()
        //{

        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter("Exec FirmaHareket2", bgl.baglanti());
        //    da.Fill(dt);
        //    gridControlSonHareketler.DataSource = dt;
        //}
        //void Fihrist()
        //{

        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter("Select Ad,Telefon1 From TBL_FIRMALAR", bgl.baglanti());
        //    da.Fill(dt);
        //    gridControlFihrist.DataSource = dt;
        //}

        //void Haberler()
        //{
        ////    XmlTextReader xmloku = new XmlTextReader("https://www.hurriyet.com.tr/rss/anasayfa");
        ////    while (xmloku.Read())
        ////    {
        ////        if (xmloku.Name == "title")
        ////        {
        ////            listBox1.Items.Add(xmloku.ReadString());
        ////        }
        ////    }
        //}
        private void FrmAnasayfa_Load(object sender, EventArgs e)
        {
            AzalanStoklar();
            Ajanda();
            //Son10Hareket();
            //Fihrist();
            //webBrowser1.Navigate("https://www.tcmb.gov.tr/kurlar/today.xml");
            //Haberler();
        }
    }
}
