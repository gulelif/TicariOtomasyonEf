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
    
    public partial class TBL_URUNLER
    {
        public int ID { get; set; }
        public string UrunAd { get; set; }
        public string Marka { get; set; }
        public string Model { get; set; }
        public string Yil { get; set; }
        public Nullable<short> Adet { get; set; }
        public Nullable<decimal> AlisFiyat { get; set; }
        public Nullable<decimal> SatisFiyat { get; set; }
        public string Detay { get; set; }
    }
}
