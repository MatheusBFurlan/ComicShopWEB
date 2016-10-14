using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicShop.Camadas.MODEL
{
    public class HQ
    {
        public int id { get; set; }
        public string titulo { get; set; }
        public string editora { get; set; }
        public int quantidade { get; set; }
        public float valor { get; set; }
    }
}
