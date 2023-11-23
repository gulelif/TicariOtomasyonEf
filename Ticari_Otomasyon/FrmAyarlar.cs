using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmAyarlar : Form
    {
        public FrmAyarlar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void UserListele()
        {
           
            gridControl1.DataSource = context.TBL_ADMIN.ToList();
          
        }
        private void FrmAyarlar_Load(object sender, EventArgs e)
        {
            UserListele();
        }

        int id;
        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_ADMIN x = (TBL_ADMIN)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtKullaniciAdi.Text = x.KullaniciAd.ToString();
                TxtParola.Text = x.Sifre;
                id = x.ID;

            }
        }

        private void BtnIslem_Click(object sender, EventArgs e)
        {
            TBL_ADMIN admin = new TBL_ADMIN
            {
                ID= id,
                KullaniciAd = TxtKullaniciAdi.Text,
                Sifre = TxtParola.Text,
                
            };
            context.TBL_ADMIN.AddOrUpdate(admin);
            context.SaveChanges();


            MessageBox.Show("Değişiklikler Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            UserListele();

        }
    }
}
