using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace KTM_WebTM.Models
{
    public class Tintuc
    {
        [ScaffoldColumn(false)] public int TIN_ID { get; set; }
        [Required, StringLength(100), Display(Name = "Tên")] public string TENTT { get; set; }
        public string NGAYGUI { get; set; }
        [Required, StringLength(1000), Display(Name = "Mô tả"), DataType(DataType.MultilineText)] public string NOIDUNG { get; set; }
        public string HINHANH { get; set; }
        public int? TGIA_ID { get; set; }
        public virtual Tacgia Tacgia { get; set; }
    }
}