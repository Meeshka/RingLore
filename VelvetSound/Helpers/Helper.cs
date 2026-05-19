using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using VelvetSound.Models;

namespace VelvetSound
{
    public static class Helper
    {
        public const string tblName = "tblUsers";

        private static string ConnectionString => ConfigurationManager.ConnectionStrings["UsersDB"].ConnectionString;

        public static void Insert(User user)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            using (SqlCommand cmd = new SqlCommand("INSERT INTO tblUsers (FirstName,LastName,Username,Password,Town,BirthDate,gender,Email,tel,address) VALUES (@f,@l,@u,@p,@c,@b,@g,@e,@t,@a)", con))
            {
                cmd.Parameters.AddWithValue("@f", user.fName ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@l", user.lName ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@u", user.username ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@p", user.pass ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@c", user.city ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@b", user.birthday == default(DateTime) ? (object)DBNull.Value : user.birthday);
                cmd.Parameters.AddWithValue("@g", string.IsNullOrWhiteSpace(user.gender) ? "male" : user.gender);
                cmd.Parameters.AddWithValue("@e", user.email ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@t", user.phone ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@a", user.address ?? (object)DBNull.Value);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public static void Update(User user)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            using (SqlCommand cmd = new SqlCommand("UPDATE tblUsers SET FirstName=@f,LastName=@l,Username=@u,Password=@p,Town=@c,BirthDate=@b,gender=@g,Email=@e,tel=@t,address=@a WHERE UserId=@id", con))
            {
                cmd.Parameters.AddWithValue("@f", user.fName ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@l", user.lName ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@u", user.username ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@p", user.pass ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@c", user.city ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@b", user.birthday == default(DateTime) ? (object)DBNull.Value : user.birthday);
                cmd.Parameters.AddWithValue("@g", string.IsNullOrWhiteSpace(user.gender) ? "male" : user.gender);
                cmd.Parameters.AddWithValue("@e", user.email ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@t", user.phone ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@a", user.address ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@id", user.userId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public static DataSet RetrieveTable(string SQLStr)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            using (SqlCommand cmd = new SqlCommand(SQLStr, con))
            using (SqlDataAdapter ad = new SqlDataAdapter(cmd))
            {
                DataSet ds = new DataSet();
                ad.Fill(ds, tblName);
                return ds;
            }
        }
    }
}
