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
    
    public partial class TBL_FATURADETAY
    {
        public int FaturaUrunID { get; set; }
        public string UrunAd { get; set; }
        public Nullable<short> Miktar { get; set; }
        public Nullable<decimal> Fiyat { get; set; }
        public Nullable<decimal> Tutar { get; set; }
        public Nullable<int> FaturaID { get; set; }
    
        public virtual TBL_FATURABILGI TBL_FATURABILGI { get; set; }
    }
}
