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
    public partial class FrmFaturaUrunler : Form
    {
        public FrmFaturaUrunler()
        {
            InitializeComponent();
        }
        public string id;
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void UrunleriListele()
        {

            gridControl1.DataSource = context.TBL_FATURADETAY.ToList();
            gridView1.Columns[gridView1.Columns.Count - 1].Visible = false;
        }
        private void FrmFaturaUrunler_Load(object sender, EventArgs e)
        {
            UrunleriListele();

        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            FrmFaturaUrunDuzenleme fr = new FrmFaturaUrunDuzenleme();
            TBL_FATURADETAY x = (TBL_FATURADETAY)gridView1.GetRow(gridView1.FocusedRowHandle);
          
            if (x != null)
            {
                fr.urunid = x.FaturaUrunID.ToString();

            }
            fr.Show();
            //  this.Hide();
        }
    }
}
