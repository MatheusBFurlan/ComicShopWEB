using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicShop.Camadas.DAL
{
    public class HQ
    {
        private string strCon = Conexao.getConexao();

        public List<MODEL.HQ> Select()
        {
            List<MODEL.HQ> lstHQ = new List<MODEL.HQ>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from HQs;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    MODEL.HQ hq = new MODEL.HQ();
                    hq.id = Convert.ToInt32(reader[0].ToString());
                    hq.titulo = reader["titulo"].ToString();
                    hq.valor = Convert.ToSingle(reader["valor"].ToString());
                    hq.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    hq.editora = reader["editora"].ToString();
                    lstHQ.Add(hq);
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de HQs...");
            }
            finally
            {
                conexao.Close();
            }

            return lstHQ;
        }

        public MODEL.HQ SelectById(int id)
        {
            MODEL.HQ hq = new MODEL.HQ();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from HQs where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.Read())
                {
                    hq.id = Convert.ToInt32(reader[0].ToString());
                    hq.titulo = reader["titulo"].ToString();
                    hq.valor = Convert.ToSingle(reader["valor"].ToString());
                    hq.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    hq.editora = reader["editora"].ToString();
                }
            }
            catch
            {
                Console.WriteLine("Deu erro na Seleção de HQs...");
            }
            finally
            {
                conexao.Close();
            }
            return hq;
        }

        public void Insert(MODEL.HQ hq)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into HQs values (@titulo, @valor, @quantidade, @editora);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@titulo", hq.titulo);
            cmd.Parameters.AddWithValue("@valor", hq.valor);
            cmd.Parameters.AddWithValue("@quantidade", hq.quantidade);
            cmd.Parameters.AddWithValue("@editora", hq.editora);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Deu erro na inserção de HQs...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(MODEL.HQ hq)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update HQs set titulo=@titulo, ";
            sql += " editora=@editora, quantidade=@quantidade, ";
            sql += " valor=@valor where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", hq.id);
            cmd.Parameters.AddWithValue("@titulo", hq.titulo);
            cmd.Parameters.AddWithValue("@editora", hq.editora);
            cmd.Parameters.AddWithValue("@quantidade", hq.quantidade);
            cmd.Parameters.AddWithValue("@valor", hq.valor);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na atualização de HQs");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(MODEL.HQ hq)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from HQs where id=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", hq.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Console.WriteLine("Erro na Remoção de HQs");
            }
            finally
            {
                conexao.Close();
            }

        }
    }
}
