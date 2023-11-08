using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmRehber : Form
    {
        public FrmRehber()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void MusteriListesi()
        {
            gridControl1.DataSource = context.TBL_MUSTERILER.ToList();
        
        }
        void FirmaListesi()
        {
            gridControl1.DataSource = context.TBL_FIRMALAR.ToList();
        }

      

        private void FrmRehber_Load(object sender, EventArgs e)
        {
            MusteriListesi();
            FirmaListesi();
        }
    }
}
