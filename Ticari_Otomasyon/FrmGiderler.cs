using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmGiderler : Form
    {
        public FrmGiderler()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void GiderListesi()
        {
            gridControl1.DataSource = context.TBL_GIDERLER.ToList();
            temizle();
        }
        private void FrmGiderler_Load(object sender, EventArgs e)
        {
            GiderListesi();
        }
        void temizle()
        {


            TxtElektrik.Text = "";
            TxtID.Text = "";
            TxtSu.Text = "";
            TxtDogalgaz.Text = "";
            TxtInternet.Text = "";
            TxtMaaslar.Text = "";
            TxtEkstra.Text = "";
            RchNotlar.Text = "";
            CmbAy.SelectedIndex = -1;
            CmbYil.SelectedIndex = -1;



        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_GIDERLER x = (TBL_GIDERLER)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.ID.ToString() ;
                CmbAy.Text = x.Ay;
                CmbYil.Text = x.Yil;
                TxtElektrik.Text = x.Elektrik.ToString();
                TxtSu.Text = x.Su.ToString();
                TxtDogalgaz.Text = x.Dogalgaz.ToString();
                TxtInternet.Text = x.Internet.ToString();
                TxtMaaslar.Text = x.Maaslar.ToString();
                TxtEkstra.Text = x.Ekstra.ToString();
                RchNotlar.Text = x.Notlar;

            }
           
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {

            TBL_GIDERLER gider = new TBL_GIDERLER
            {
                Ay = CmbAy.Text,
                Yil = CmbYil.Text,
                Elektrik =decimal.Parse( TxtElektrik.Text),
                Su = decimal.Parse(TxtSu.Text),
                Dogalgaz = decimal.Parse(TxtDogalgaz.Text),
                Internet = decimal.Parse(TxtInternet.Text),
                Maaslar = decimal.Parse(TxtMaaslar.Text),
                Ekstra = decimal.Parse(TxtEkstra.Text),
                Notlar = RchNotlar.Text,



            };
            context.TBL_GIDERLER.Add(gider);
            context.SaveChanges();


            MessageBox.Show("Gider Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            GiderListesi();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show("Gideri Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_GIDERLER gider = context.TBL_GIDERLER.Find(int.Parse(TxtID.Text));
                    context.TBL_GIDERLER.Remove(gider);
                    context.SaveChanges();
                    MessageBox.Show("Gider Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    GiderListesi();
                }
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_GIDERLER gider = new TBL_GIDERLER
                {
                    ID = byte.Parse(TxtID.Text),
                    Ay = CmbAy.Text,
                    Yil = CmbYil.Text,
                    Elektrik = decimal.Parse(TxtElektrik.Text),
                    Su = decimal.Parse(TxtSu.Text),
                    Dogalgaz = decimal.Parse(TxtDogalgaz.Text),
                    Internet = decimal.Parse(TxtInternet.Text),
                    Maaslar = decimal.Parse(TxtMaaslar.Text),
                    Ekstra = decimal.Parse(TxtEkstra.Text),
                    Notlar = RchNotlar.Text,



                };
                context.TBL_GIDERLER.AddOrUpdate(gider);
                context.SaveChanges();
                MessageBox.Show("Gider Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GiderListesi();
            }
        }
    }
}
