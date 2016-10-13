using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.DAL
{
    public class Itens_Venda
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.Itens_Venda> Select()
        {
            List<MODEL.Itens_Venda> lstItens_Venda = new List<MODEL.Itens_Venda>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Itens_Venda";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Itens_Venda item_venda = new MODEL.Itens_Venda();
                    item_venda.id = Convert.ToInt32(reader[0].ToString());
                    item_venda.venda_id = Convert.ToInt32(reader["venda_id"].ToString());
                    item_venda.hq_id = Convert.ToInt32(reader["hq_id"].ToString());
                    item_venda.status = Convert.ToChar(reader["status"].ToString());

                    lstItens_Venda.Add(item_venda);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Itens_Venda...");
            }
            finally
            {
                conexao.Close();
            }

            return lstItens_Venda;
        }



        public List<MODEL.Itens_Venda> SelectByVenda(int idVenda)
        {
            List<MODEL.Itens_Venda> lstItens_Venda = new List<MODEL.Itens_Venda>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Itens_Venda where venda_id=@idVenda";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@idVenda", idVenda);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Itens_Venda item_venda = new MODEL.Itens_Venda();
                    item_venda.id = Convert.ToInt32(reader[0].ToString());
                    item_venda.venda_id = Convert.ToInt32(reader["venda_id"].ToString());
                    item_venda.hq_id = Convert.ToInt32(reader["hq_id"].ToString());
                    item_venda.status = Convert.ToChar(reader["status"].ToString());

                    lstItens_Venda.Add(item_venda);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Itens_Venda...");
            }
            finally
            {
                conexao.Close();
            }

            return lstItens_Venda;
        }

        public void Insert(MODEL.Itens_Venda item_venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Itens_Venda values (@venda_id, @hq_id, @status);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@venda_id", item_venda.venda_id);
            cmd.Parameters.AddWithValue("@hq_id", item_venda.hq_id);
            cmd.Parameters.AddWithValue("@status", item_venda.status);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Itens_Venda...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Itens_Venda item_venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Itens_Venda set venda_id=@venda_id, ";
            sql += " hq_id=@hq_id, status=@status where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", item_venda.id);
            cmd.Parameters.AddWithValue("@venda_id", item_venda.venda_id);
            cmd.Parameters.AddWithValue("@hq_id", item_venda.hq_id);
            cmd.Parameters.AddWithValue("@status", item_venda.status);

            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Itens_Venda");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Itens_Venda item_venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Itens_Venda where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", item_venda.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Itens_Venda");
            }
            finally
            {
                conexao.Close();
            }

        }
    }
}
