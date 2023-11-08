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
    public partial class FrmFaturalar : Form
    {
        public FrmFaturalar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void FaturaListele()
        {
            gridControl1.DataSource = context.TBL_FATURABILGI.ToList();
            gridView1.Columns[gridView1.Columns.Count - 1].Visible = false;
            Temizle();

        }
        void Temizle()
        {
            TxtAlici.Text = "";
            TxtID.Text = "";
            TxtSeri.Text = "";
            TxtSiraNo.Text = "";
            TxtTeslimAlan.Text = "";
            TxtTeslimEden.Text = "";
            MskTarih.Text = "";
            MskSaat.Text = "";
            TxtVergiD.Text = "";
            TxtFaturaID.Text = "";
            TxtUrunAdi.Text = "";
            TxtMiktar.Text = "";
            TxtFiyat.Text = "";
            TxtTutar.Text = "";



        }
        private void FrmFaturalar_Load(object sender, EventArgs e)
        {
            FaturaListele();
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            TBL_FATURABILGI x = (TBL_FATURABILGI)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.FaturaBilgiID.ToString();
                TxtSiraNo.Text = x.SiraNo;
                TxtSeri.Text = x.Seri;
                MskTarih.Text = x.Tarih;
                MskSaat.Text = x.Saat;
                TxtVergiD.Text = x.VergiDaire;
                TxtAlici.Text = x.Alici;
                TxtTeslimAlan.Text = x.TeslimAlan;
                TxtTeslimEden.Text = x.TeslimEden;
                TxtFaturaID.Text = x.FaturaBilgiID.ToString() ;
               
            }
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            Temizle();
        }
        double miktar, tutar, fiyat;

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            if (TxtFaturaID.Text == "")
            {
                TBL_FATURABILGI fatura = new TBL_FATURABILGI
                {
                    Seri = TxtSeri.Text,
                    SiraNo = TxtSiraNo.Text,
                    Tarih = MskTarih.Text,
                    Saat = MskSaat.Text,
                    VergiDaire = TxtVergiD.Text,
                    Alici = TxtAlici.Text,
                    TeslimEden = TxtTeslimEden.Text,
                    TeslimAlan = TxtTeslimAlan.Text,

                };
                context.TBL_FATURABILGI.Add(fatura);
                context.SaveChanges();


                MessageBox.Show("Fatura Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                FaturaListele();
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                TBL_FATURABILGI fatura = new TBL_FATURABILGI
                {
                    FaturaBilgiID = short.Parse(TxtID.Text),
                    Seri = TxtSeri.Text,
                    SiraNo = TxtSiraNo.Text,
                    Tarih = MskTarih.Text,
                    Saat = MskSaat.Text,
                    VergiDaire = TxtVergiD.Text,
                    Alici = TxtAlici.Text,
                    TeslimEden = TxtTeslimEden.Text,
                    TeslimAlan = TxtTeslimAlan.Text,


                };
                context.TBL_FATURABILGI.AddOrUpdate(fatura);
                context.SaveChanges();
                MessageBox.Show("Fatura Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                FaturaListele();
            }
        }

        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            FrmFaturaUrunler fr = new FrmFaturaUrunler();
            TBL_FATURABILGI x = (TBL_FATURABILGI)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                fr.id = x.FaturaBilgiID.ToString();

            }
            fr.Show();
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show("Faturayı Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_FATURABILGI fatura = context.TBL_FATURABILGI.Find(int.Parse(TxtID.Text));
                    context.TBL_FATURABILGI.Remove(fatura);
                    context.SaveChanges();
                    MessageBox.Show("Fatura Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    FaturaListele();
                }
            }
        }

        private void Txt_EditValueChanged(object sender, EventArgs e)
        {
            if (TxtFiyat.Text != "" && TxtMiktar.Text != "")
            {

                fiyat = Convert.ToDouble(TxtFiyat.Text);
                miktar = Convert.ToInt32(TxtMiktar.Text);
                tutar = fiyat * miktar;
                TxtTutar.Text = tutar.ToString();
            }
        }
    }
}
