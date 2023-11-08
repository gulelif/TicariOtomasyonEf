using DevExpress.XtraGrid;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmFaturaUrunDuzenleme : Form
    {
        public FrmFaturaUrunDuzenleme()
        {
            InitializeComponent();
        }
        public string urunid;
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        
        
        private void FrmFaturaUrunDuzenleme_Load(object sender, EventArgs e)
        {
            TxtUrunID.Text = urunid;
            UrunleriListele();
        }

        private void UrunleriListele()
        {
           
            var urun = context.TBL_FATURADETAY.Find(Int32.Parse(urunid));
          
                TxtFiyat.Text = urun.Fiyat.ToString();
                TxtMiktar.Text = urun.Miktar.ToString();
                TxtTutar.Text = urun.Tutar.ToString();
                TxtUrunAdi.Text = urun.UrunAd;
                TxtFaturaID.Text = urun.FaturaID.ToString();

            
            
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (urunid != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show(" Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_FATURADETAY fatura = context.TBL_FATURADETAY.Find(Int32.Parse(urunid));
                    context.TBL_FATURADETAY.Remove(fatura);
                    context.SaveChanges();
                    MessageBox.Show("Değişiklikler Kaydedildi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    this.Hide();
                }
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {
            if (urunid != "")
            {
                TBL_FATURADETAY fatura = new TBL_FATURADETAY
                {
                    FaturaUrunID = Int32.Parse(urunid),
                    UrunAd = TxtUrunAdi.Text,
                    Miktar = short.Parse(TxtMiktar.Text),
                    Fiyat = decimal.Parse(TxtFiyat.Text),
                    Tutar = decimal.Parse(TxtTutar.Text),
                   


                };
                context.TBL_FATURADETAY.AddOrUpdate(fatura);
                context.SaveChanges();
                MessageBox.Show("Fatura Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
               
            }
        }
        double miktar, tutar, fiyat;
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
