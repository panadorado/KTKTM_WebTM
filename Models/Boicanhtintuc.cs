using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace KTM_WebTM.Models
{
    public class Boicanhtintuc : DbContext
    {
        public Boicanhtintuc() : base("PheGame") { }
        public DbSet<Tacgia> Tacgias { get; set; }
        public DbSet<Tintuc> Tintucs { get; set; }
    }
}