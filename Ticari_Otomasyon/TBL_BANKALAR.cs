//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Ticari_Otomasyon
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_BANKALAR
    {
        public short ID { get; set; }
        public string BankaAdi { get; set; }
        public string Sube { get; set; }
        public string IBAN { get; set; }
        public string HesapNo { get; set; }
        public string Yetkili { get; set; }
        public string Tarih { get; set; }
        public string HesapTuru { get; set; }
        public Nullable<short> FirmaID { get; set; }
        public string Sehir { get; set; }
        public string Ilce { get; set; }
        public string Telefon { get; set; }
    
        public virtual TBL_FIRMALAR TBL_FIRMALAR { get; set; }
    }
}
