using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ticari_Otomasyon
{
    public partial class FrmBankalar : Form
    {
        public FrmBankalar()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        void BankaListesi()
        {
            // STORED PROCEDURE İLE BANKA BİLGİLERİ ÇEKİLDİ
            
            gridControl1.DataSource=  context.BankaBilgileri().ToList();
           temizle();
        }
        void SehirListesi()
        {

            var sehir = context.TBL_ILLER.ToList();

            for (int i = 0; i < sehir.Count; i++)
            {
                Cmbil.Properties.Items.Add(sehir[i].Sehir);
            }

            

        }
        void FirmaListesi()
        {
         
            LUEFirma.Properties.ValueMember = "ID";
            LUEFirma.Properties.DisplayMember = "Ad";
            LUEFirma.Properties.DataSource = context.TBL_FIRMALAR.Select(p => new { p.ID, p.Ad }).ToList();
        }

        void temizle()
        {
            TxtBanka.Text = "";
            TxtSube.Text = "";
            TxtID.Text = "";
            TxtIBAN.Text = "";
            TxtHesapNo.Text = "";
            TxtYetkili.Text = "";
            MskTelefon.Text = "";
            MskTarih.Text = "";
            TxtHesapTuru.Text = "";
            Cmbil.SelectedIndex = -1;
            CmbIlce.SelectedIndex = -1;
            LUEFirma.EditValue = null;

            TxtBanka.Focus();

        }
        private void FrmBankalar_Load(object sender, EventArgs e)
        {
            BankaListesi();
            SehirListesi();
            FirmaListesi();
        }

        private void BtnTemizle_Click(object sender, EventArgs e)
        {
            temizle();
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            TBL_BANKALAR banka = new TBL_BANKALAR
            {
                BankaAdi = TxtBanka.Text,
                Sehir= Cmbil.Text,
                Ilce = CmbIlce.Text,
                Sube = TxtSube.Text,
                IBAN = TxtIBAN.Text,
                HesapNo = TxtHesapNo.Text,
                Yetkili = TxtYetkili.Text,
                Telefon = MskTelefon.Text,
                Tarih = MskTarih.Text,
                HesapTuru = TxtHesapTuru.Text,
                FirmaID= (short?)LUEFirma.EditValue

            };
            context.TBL_BANKALAR.Add(banka);
            context.SaveChanges();


            MessageBox.Show("Banka Sisteme Eklendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            BankaListesi();
        }

        private void Cmbil_SelectedIndexChanged(object sender, EventArgs e)
        {
            CmbIlce.Properties.Items.Clear();
            CmbIlce.SelectedIndex = 0;
            var ilce = context.TBL_ILCELER.Where(x => x.Sehir.Equals(Cmbil.SelectedIndex + 1)).ToList();
            for (int i = 0; i < ilce.Count; i++)
            {
                CmbIlce.Properties.Items.Add(ilce[i].Ilce);
            }
        }

        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            BankaBilgileri_Result x = (BankaBilgileri_Result)gridView1.GetRow(gridView1.FocusedRowHandle);
            if (x != null)
            {
                TxtID.Text = x.ID.ToString();
                TxtBanka.Text = x.BankaAdi;
                TxtSube.Text = x.Sube;
                TxtIBAN.Text = x.IBAN;
                TxtHesapNo.Text = x.HESAPNO;
                TxtYetkili.Text = x.Yetkili;
                MskTelefon.Text = x.Telefon;
                MskTarih.Text = x.Tarih;
                TxtHesapTuru.Text = x.HesapTuru;
                Cmbil.Text = x.Sehir;
                CmbIlce.Text = x.Ilce;
                LUEFirma.Text = x.Ad;
              
            }
        }

        private void BtnSil_Click(object sender, EventArgs e)
        {
            if (TxtID.Text != "")
            {
                DialogResult delete = new DialogResult();
                delete = MessageBox.Show("Bankayı Silmek İstiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (delete == DialogResult.Yes)
                {
                    TBL_BANKALAR banka = context.TBL_BANKALAR.Find(int.Parse(TxtID.Text));
                    context.TBL_BANKALAR.Remove(banka);
                    context.SaveChanges();
                    MessageBox.Show("Banka Silindi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    BankaListesi();
                }
            }
        }

        private void BtnGuncelle_Click(object sender, EventArgs e)
        {

            if (TxtID.Text != "")
            {
                TBL_BANKALAR banka = new TBL_BANKALAR
                {
                    ID= short.Parse(TxtID.Text),
                    BankaAdi = TxtBanka.Text,
                    Sehir = Cmbil.Text,
                    Ilce = CmbIlce.Text,
                    Sube = TxtSube.Text,
                    IBAN = TxtIBAN.Text,
                    HesapNo = TxtHesapNo.Text,
                    Yetkili = TxtYetkili.Text,
                    Telefon = MskTelefon.Text,
                    Tarih = MskTarih.Text,
                    HesapTuru = TxtHesapTuru.Text,
                    FirmaID = (short?)LUEFirma.EditValue

                };
                context.TBL_BANKALAR.AddOrUpdate(banka);
                context.SaveChanges();
                MessageBox.Show("Banka Güncellendi!", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                BankaListesi();
            }
        }

       
    }
}
