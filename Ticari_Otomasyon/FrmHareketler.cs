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
    public partial class FrmHareketler : Form
    {
        public FrmHareketler()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void MusteriHareketListele()
        {
            //USING STORED PROCEDURE
            gridControl1.DataSource = context.MusteriHareketler().ToList();
        }
        void FirmaHareketListele()
        {
            //USING STORED PROCEDURE
            gridControl2.DataSource = context.FirmaHareketler().ToList();
        }
        private void FrmHareketler_Load(object sender, EventArgs e)
        {
            MusteriHareketListele();
            FirmaHareketListele();

        }
    }
}
