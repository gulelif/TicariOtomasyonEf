using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using System.Xml;

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
        void Son10Hareket()
        {
            gridControlSonHareketler.DataSource = context.FirmaHareket2().ToList();
           
        }
        void Fihrist()
        {
            gridControlFihrist.DataSource = context.TBL_FIRMALAR.Select(x=>new {x.Ad,x.Telefon1}).ToList();
          
        }

        void Haberler()
        {
            XmlTextReader xmloku = new XmlTextReader("https://www.hurriyet.com.tr/rss/anasayfa");
            while (xmloku.Read())
            {
                if (xmloku.Name == "title")
                {
                    listBox1.Items.Add(xmloku.ReadString());
                }
            }
        }
        private void FrmAnasayfa_Load(object sender, EventArgs e)
        {
            AzalanStoklar();
            Ajanda();
            Son10Hareket();
            Fihrist();
            webBrowser1.Navigate("https://www.tcmb.gov.tr/kurlar/today.xml");
            Haberler();
        }
    }
}
