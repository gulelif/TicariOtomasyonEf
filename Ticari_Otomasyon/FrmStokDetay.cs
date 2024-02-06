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
    public partial class FrmStokDetay : Form
    {
        public FrmStokDetay()
        {
            InitializeComponent();
        }
        public string ad;
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        private void FrmStokDetay_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource = context.TBL_URUNLER.Where(x=>x.UrunAd.Equals(ad)).ToList();
        }
    }
}
