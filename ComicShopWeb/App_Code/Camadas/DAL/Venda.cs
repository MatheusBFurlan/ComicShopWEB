using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicShop.Camadas.DAL
{
    public class Venda
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.Venda> Select()
        {
            List<MODEL.Venda> lstVenda = new List<MODEL.Venda>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Venda";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.Venda venda = new MODEL.Venda();
                    venda.id = Convert.ToInt32(reader[0].ToString());
                    venda.data = Convert.ToDateTime(reader["data"].ToString());
                    venda.cliente_id = Convert.ToInt32(reader["cliente_id"].ToString());

                    lstVenda.Add(venda);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de Venda...");
            }
            finally
            {
                conexao.Close();
            }

            return lstVenda;
        }

        public void Insert(MODEL.Venda venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Venda values (@data, @cliente_id);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@data", venda.data);
            cmd.Parameters.AddWithValue("@cliente_id", venda.cliente_id);

            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de Venda...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.Venda venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Locacao set data=@data, ";
            sql += " cliente_id=@cliente_id where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", venda.id);
            cmd.Parameters.AddWithValue("@data", venda.data);
            cmd.Parameters.AddWithValue("@cliente_id", venda.cliente_id);

            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de Venda");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.Venda venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Venda where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", venda.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de Venda");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}
