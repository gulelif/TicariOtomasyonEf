using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmStoklar : Form
    {
        public FrmStoklar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        private void FrmStoklar_Load(object sender, EventArgs e)
        {
            

            var urun = context.TBL_URUNLER.GroupBy(x => x.UrunAd)
                .Select(a=>new {

                    UrunAd=a.Key,
                    Miktar=a.Sum(s=>s.Adet)

                }).ToList();
            gridControl1.DataSource = urun;
            for (int i = 0; i < urun.Count; i++)
            {
                chartControl1.Series["Series 1"].Points.AddPoint(Convert.ToString(urun[i].UrunAd), int.Parse(urun[i].Miktar.ToString()));

            }
            var firmasehirsayisi = context.TBL_FIRMALAR.GroupBy(x => x.Sehir)
               .Select(a => new {

                   Sehir = a.Key,
                   Miktar = a.Count()

               }).ToList();
            for (int i = 0; i < firmasehirsayisi.Count; i++)
            {
                chartControl2.Series["Series 1"].Points.AddPoint(Convert.ToString(firmasehirsayisi[i].Sehir), int.Parse(firmasehirsayisi[i].Miktar.ToString()));

            }
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            FrmStokDetay frm = new FrmStokDetay();
            var x =gridView1.GetFocusedRowCellValue("UrunAd");
            if (x != null)
            {
                frm.ad = x.ToString();
            }

            frm.Show();

            
        }
    }
}
