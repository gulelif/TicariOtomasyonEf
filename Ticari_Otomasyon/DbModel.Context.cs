﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DboTicariOtomasyonEntities1 : DbContext
    {
        public DboTicariOtomasyonEntities1()
            : base("name=DboTicariOtomasyonEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<TBL_ILCELER> TBL_ILCELER { get; set; }
        public virtual DbSet<TBL_ILLER> TBL_ILLER { get; set; }
        public virtual DbSet<TBL_STOKLAR> TBL_STOKLAR { get; set; }
        public virtual DbSet<TBL_URUNLER> TBL_URUNLER { get; set; }
        public virtual DbSet<TBL_MUSTERILER> TBL_MUSTERILER { get; set; }
        public virtual DbSet<TBL_FIRMALAR> TBL_FIRMALAR { get; set; }
        public virtual DbSet<TBL_PERSONELLER> TBL_PERSONELLER { get; set; }
        public virtual DbSet<TBL_KODLAR> TBL_KODLAR { get; set; }
        public virtual DbSet<TBL_GIDERLER> TBL_GIDERLER { get; set; }
        public virtual DbSet<TBL_BANKALAR> TBL_BANKALAR { get; set; }
        public virtual DbSet<TBL_FATURABILGI> TBL_FATURABILGI { get; set; }
        public virtual DbSet<TBL_FATURADETAY> TBL_FATURADETAY { get; set; }
        public virtual DbSet<TBL_NOTLAR> TBL_NOTLAR { get; set; }
    
        public virtual ObjectResult<BankaBilgileri_Result> BankaBilgileri()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<BankaBilgileri_Result>("BankaBilgileri");
        }
    }
}
