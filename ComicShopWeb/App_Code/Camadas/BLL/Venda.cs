using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.BLL
{
    public class Venda
    {
        public List<MODEL.Venda> Select()
        {
            DAL.Venda Venda = new DAL.Venda();

            return Venda.Select();
        }

        public void Insert(MODEL.Venda venda)
        {
            DAL.Venda Venda = new DAL.Venda();
            //
            Venda.Insert(venda);
        }

        public void Update(MODEL.Venda venda)
        {
            DAL.Venda Venda = new DAL.Venda();
            Venda.Update(venda);
        }

        public void Delete(MODEL.Venda venda)
        {
            DAL.Venda Venda = new DAL.Venda();

            Venda.Delete(venda);
        }
    }
}
