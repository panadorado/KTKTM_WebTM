using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace KTM_WebTM.Models
{
    public class NewsDatabaseInitializer : DropCreateDatabaseAlways<Boicanhtintuc>
    {
        protected override void Seed(Boicanhtintuc boicanh)
        {
            GetTacgias().ForEach(c => boicanh.Tacgias.Add(c));
            GetTintucs().ForEach(p => boicanh.Tintucs.Add(p));
        }

        private static List<Tacgia> GetTacgias()
        {
            var tacgias = new List<Tacgia>
            {
                new Tacgia { TGIA_ID = 1, TENTG = "Phạm Quốc Cường" },
                new Tacgia { TGIA_ID = 2, TENTG = "Đặng Hữu Hiệp" },
                new Tacgia { TGIA_ID = 3, TENTG = "Trần Thanh Huy" },
            };
            return tacgias;
        }

        private static List<Tintuc> GetTintucs()
        {
            var tintucs = new List<Tintuc>
            {
                //book 1 
                new Tintuc
                {
                    TIN_ID = 1,
                    TENTT = "Counter-Strike Global Offensive",
                    NGAYGUI = "22 tháng 8 năm 2012",
                    NOIDUNG = "Counter-Strike: Global Offensive (CS: GO) mở rộng dựa trên lối chơi</br>" +
                              "hành động dựa trên đội mà nó tiên phong khi nó được ra mắt</br>" +
                              "cách đây 19 năm.</br>" +
                              "</br>" +
                              "CS: GO có các bản đồ, nhân vật, vũ khí và chế độ trò chơi mới và cung </ br >" +
                              "cấp các phiên bản cập nhật của nội dung CS cổ điển(de_dust2, v.v.).</ br >" +
                              "</ br >" +
                              "Counter-Strike khiến ngành công nghiệp game bất ngờ khi MOD</br>" + 
                              "không thể trở thành trò chơi hành động trực tuyến trên PC được chơi</ br >" +
                              "nhiều nhất trên thế giới gần như ngay lập tức sau khi phát hành vào</ br >" +
                              "tháng 8 năm 1999, Doug Lombardi tại Valve nói. ",
                    HINHANH = "pic1.png",
                    TGIA_ID = 1
                },
                new Tintuc
                {
                    TIN_ID = 2,
                    TENTT = "Playerunknown's Battlegrounds",
                    NGAYGUI = "Ngày 21 tháng 12 năm 2017",
                    NOIDUNG = "",
                    HINHANH ="pic2.png",
                    TGIA_ID = 2
                },
                new Tintuc
                {
                    TIN_ID = 3,
                    TENTT = "Left 4 Dead 2",
                    NGAYGUI = "Ngày 17 tháng 11 năm 2009",
                    NOIDUNG = "",
                    HINHANH ="pic3.png",
                    TGIA_ID = 3
                },
                new Tintuc
                {
                    TIN_ID = 4,
                    TENTT = "Layers of Fear",
                    NGAYGUI = "Ngày 16 tháng 2 năm 2016",
                    NOIDUNG = "",
                    HINHANH ="pic4.png",
                    TGIA_ID = 1
                },
                new Tintuc
                {
                    TIN_ID = 5,
                    TENTT = "Shadow Warrior",
                    NGAYGUI = "Ngày 27 tháng 9 năm 2013",
                    NOIDUNG = "",
                    HINHANH ="pic5.png",
                    TGIA_ID = 2
                }
            };
            return tintucs;
        }
    }
}