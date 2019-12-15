using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace KTM_WebTM.Models
{
    public class Tacgia
    {
        [ScaffoldColumn(false)] public int TGIA_ID { get; set; }
        [Required, StringLength(100), Display(Name = "Đăng bởi")] public string TENTG { get; set; }
        public virtual ICollection<Tintuc> Tintucs { get; set; }
    }
}