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
            gridControl2.DataSource = context.TBL_FIRMALAR.ToList();
        }

      

        private void FrmRehber_Load(object sender, EventArgs e)
        {
            MusteriListesi();
            FirmaListesi();
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            FrmMail frm = new FrmMail();
            TBL_MUSTERILER x = (TBL_MUSTERILER)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                frm.mail = x.Mail.ToString();
            }
          
            frm.Show();
        }

        private void gridView2_DoubleClick(object sender, EventArgs e)
        {
            FrmMail frm = new FrmMail();
            TBL_FIRMALAR x = (TBL_FIRMALAR)gridView2.GetRow(gridView2.FocusedRowHandle);
            if (x != null)
            {
                frm.mail = x.Mail.ToString();
            }

            frm.Show();
        }
    }
}
