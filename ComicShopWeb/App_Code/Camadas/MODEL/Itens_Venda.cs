using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.MODEL
{
    public class Itens_Venda
    {
        public int id { get; set; }
        public int venda_id { get; set; }
        public int hq_id { get; set; }
        public char status { get; set; }
    }
}
