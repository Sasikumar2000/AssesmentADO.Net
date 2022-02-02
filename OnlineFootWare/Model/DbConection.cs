using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineFootWare.Model
{
    public class DbConection
    {
        string ConnectionStr = "Data Source=100.72.130.5;Initial Catalog=Training;Persist Security Info=True;User ID=TrainingUsr;Password=Tr@ininGU$r@#321";
       
        public DataTable ViewDb(FootProperty foot)
        {
            SqlConnection con = new SqlConnection(ConnectionStr);
            SqlDataAdapter da = new SqlDataAdapter($"select ProductCode,Name,Cost  from SkFootWares where Category = '{foot.Category}'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public StatusProperty Fetch(FootProperty foot)
        {
            StatusProperty status = new StatusProperty();
            SqlConnection con = new SqlConnection(ConnectionStr);
            SqlDataAdapter da = new SqlDataAdapter($"select * from SkFootWares where ProductCode = {foot.ProductCode} ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            status.ProductCode = Convert.ToInt32(dt.Rows[0][0]);
            status.ProductName = dt.Rows[0][1].ToString();
            status.Cost = Convert.ToInt32(dt.Rows[0][2]);
            return status;
        }
        public string Payment(StatusProperty status)
        {
            SqlConnection con = new SqlConnection(ConnectionStr);
            con.Open();
            SqlCommand cmd = new SqlCommand($"insert into SkOrderStatus values({status.ProductCode},'{status.ProductName}',{status.Cost},{status.Quantity},{status.TotalAmount})",con); ;
            cmd.ExecuteNonQuery();
            con.Close();
            return "Saved Succesfully";
        }

        public DataTable Status()
        {
            SqlConnection con = new SqlConnection(ConnectionStr);
            SqlDataAdapter da = new SqlDataAdapter("select * from SkOrderStatus",con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}