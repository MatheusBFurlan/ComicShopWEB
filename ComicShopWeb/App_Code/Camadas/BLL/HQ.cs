using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.BLL
{
    public class HQ
    {
        public List<MODEL.HQ> Select()
        {
            DAL.HQ dalHQ = new DAL.HQ();
            return dalHQ.Select();
        }

        public MODEL.HQ SelectById(int id)
        {
            DAL.HQ dalHQ = new DAL.HQ();
            return dalHQ.SelectById(id);
        }

        public void Insert(MODEL.HQ HQ)
        {
            DAL.HQ dalHQ = new DAL.HQ();
            //
            dalHQ.Insert(HQ);
        }

        public void Update(MODEL.HQ HQ)
        {
            DAL.HQ dalHQ = new DAL.HQ();
            dalHQ.Update(HQ);
        }

        public void Delete(MODEL.HQ HQ)
        {
            DAL.HQ dalHQ = new DAL.HQ();

            dalHQ.Delete(HQ);
        }
    }
}
