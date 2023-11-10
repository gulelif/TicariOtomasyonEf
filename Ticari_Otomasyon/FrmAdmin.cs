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
    public partial class FrmAdmin : Form
    {
        public FrmAdmin()
        {
            InitializeComponent();
        }
        DboTicariOtomasyonEntities1 context = new DboTicariOtomasyonEntities1();
        private void BtnGirisYap_Click(object sender, EventArgs e)
        {
            
           var login = context.TBL_ADMIN.Where(x => x.KullaniciAd.Equals(TxtKullaniciAdi.Text)&&x.Sifre.Equals(TxtParola.Text)).ToList();
            if(login.Count > 0 ) {

                FrmAnaModul fr = new FrmAnaModul();
                fr.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Hatalı Kullanıcı Adı ya da Parola", "", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
        }
    }
}
