using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VelvetSound
{
    public partial class filterUserTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string SQLStr = "SELECT * FROM tblUsers";
                DataSet ds = RetrieveUsersTable(SQLStr);
                DataTable dt = ds.Tables[0];
                string table = BuildUsersTable(dt);
                tableDiv.InnerHtml = table;
            }
        }
        public DataSet RetrieveUsersTable(string SQLStr)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UsersDB"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SQLStr;
            cmd.Connection = con;

            SqlDataAdapter ad = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            ad.Fill(ds, "users");

            return ds;

        }

        public string BuildUsersTable(DataTable dt)
        {
            string str = "<table class='usersTable' align='center'>";
            str += "<tr>";
            foreach (DataColumn coulmn in dt.Columns)
            {
                str += "<td>" + coulmn.ColumnName + "</td>";

            }

            foreach (DataRow row in dt.Rows)
            {
                str += "<tr>";
                foreach (DataColumn column in dt.Columns)
                {
                    str += "<td>" + row[column] + "</td>";
                }

                str += "</tr>";
            }
            str += "</tr>";
            str += "</Table>";
            return str;
        }




        protected void btnFilter_ServerClick(object sender, EventArgs e)
        {
            string SQLStr = BuildSQLStr(Request["filter"]);
            DataSet ds = RetrieveUsersTable(SQLStr);
            string table = BuildUsersTable(ds.Tables[0]);
            tableDiv.InnerHtml = table;
        }


        //פעולה שבונה את השאלתה 
        public string BuildSQLStr(string str)
        {
            if (str.Length == 0)
            {
                return "SELECT * FROM tblUsers";
            }

            string SQLStr =
                $"SELECT * FROM tblUsers WHERE FirstName LIKE '" + str + "' OR LastName LIKE '" + str + "'";

            return SQLStr;
        }

    }
}

/*"Server=SERVER_NAME;
Database=DB_NAME;User Id=USERNAME;Password=PASSWORD";*/
