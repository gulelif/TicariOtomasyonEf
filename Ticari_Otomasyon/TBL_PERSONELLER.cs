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
    
    public partial class TBL_PERSONELLER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_PERSONELLER()
        {
            this.TBL_FIRMAHAREKETLER = new HashSet<TBL_FIRMAHAREKETLER>();
            this.TBL_MUSTERIHAREKETLER = new HashSet<TBL_MUSTERIHAREKETLER>();
        }
    
        public int ID { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Telefon { get; set; }
        public string TCNo { get; set; }
        public string Mail { get; set; }
        public string Sehir { get; set; }
        public string Ilce { get; set; }
        public string Adres { get; set; }
        public string Gorev { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_FIRMAHAREKETLER> TBL_FIRMAHAREKETLER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_MUSTERIHAREKETLER> TBL_MUSTERIHAREKETLER { get; set; }
    }
}
