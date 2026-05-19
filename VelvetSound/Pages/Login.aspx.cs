using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace VelvetSound.Pages
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            // שימוש בפרמטרים כדי למנוע הזרקת SQL (הסבר בהמשך)
            string SQLStr = "SELECT * FROM dbo.Users WHERE username = @username AND pass = @password";

            // אנחנו נשנה מעט את הפונקציה כדי שתקבל פרמטרים בבטחה
            DataSet ds = RetrieveUsersTable(SQLStr, username.Text, password.Text);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["login"] = true;
                Session["user"] = username.Text;
                Session["Admin"] = ds.Tables[0].Rows[0]["ADMIN"];
                message.InnerHtml = "";
                Response.Redirect("Home.aspx");
            }
            else
            {
                Session["login"] = false;
                message.InnerHtml = "Error username or password";
                message.Style.Add("color", "red");
            }
        }

        public DataSet RetrieveUsersTable(string SQLStr, string user, string pass)
        {
            // Использовать строку подключения из Web.config (UsersDB)
            string connectionString = ConfigurationManager.ConnectionStrings["UsersDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Используем фиксированное имя таблицы и имена столбцов
                string sql = "SELECT * FROM dbo.tblUsers WHERE [Username] = @username AND [Password] = @password";
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    // הגנה מפני SQL Injection
                    cmd.Parameters.AddWithValue("@username", user);
                    cmd.Parameters.AddWithValue("@password", pass);

                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    ad.Fill(ds, "users");
                    return ds;
                }
            }
        }
    } // סגירת ה-Class
} // סגירת ה-Namespace