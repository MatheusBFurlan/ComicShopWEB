using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.BLL
{
    public class Itens_Venda
    {
        public List<MODEL.Itens_Venda> Select()
        {
            DAL.Itens_Venda dalItVenda = new DAL.Itens_Venda();

            return dalItVenda.Select();
        }

        public List<MODEL.Itens_Venda> SelectByLocacao(int idVenda)
        {
            DAL.Itens_Venda dalItVenda = new DAL.Itens_Venda();

            return dalItVenda.SelectByVenda(idVenda);
        }

        public bool Insert(MODEL.Itens_Venda item_venda)
        {
            DAL.Itens_Venda dalItVenda = new DAL.Itens_Venda();
            MODEL.HQ hq = new MODEL.HQ();
            BLL.HQ bllHQ = new BLL.HQ();
            
            hq = bllHQ.SelectById(item_venda.hq_id);
            if (hq.quantidade > 0) {
                hq.quantidade = hq.quantidade - 1;
                bllHQ.Update(hq);

                dalItVenda.Insert(item_venda);
                return true;
            }
            return false; 
        }

        public void Update(MODEL.Itens_Venda item_venda)
        {
            DAL.Itens_Venda dalItVenda = new DAL.Itens_Venda();
            dalItVenda.Update(item_venda);
        }

        public void Delete(MODEL.Itens_Venda item_venda)
        {
            DAL.Itens_Venda dalItVenda = new DAL.Itens_Venda();

            dalItVenda.Delete(item_venda);
        }
    }
}
