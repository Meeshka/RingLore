using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace VelvetSound
{
    public partial class Users : System.Web.UI.Page
    {

        protected HtmlGenericControl message;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string SQLStr = "SELECT * FROM tblUsers";
                DataSet ds = RetrieveUsersTable(SQLStr);
                DataTable dt = ds.Tables[0];
                string table = BuildUsersTable(dt);
                tableD.InnerHtml = table;
            }
        }
        public DataSet RetrieveUsersTable(string SQLStr)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Database2"].ConnectionString;
            // "Server=SERVER_NAME;Database=DB_NAME;User Id=USERNAME;Password=PASSWORD";
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SQLStr;
            cmd.Connection = con;

            SqlDataAdapter ad = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            ad.Fill(ds, "users");

            return ds;

        }
        public string CreateRadioBtn(string id)
        {
            return $"<input type='checkbox' name='chk{id}' id='chk{id}' runat='server' />";
        }

        public string BuildUsersTable(DataTable dt)
        {
            string str = "<table class='usersTable' align='center'>";
            str += "<tr>";
            str += "<td> </td>";
            foreach (DataColumn coulmn in dt.Columns)
            {
                str += "<td>" + coulmn.ColumnName + "</td>";

            }

            foreach (DataRow row in dt.Rows)
            {
                str += "<tr>";
                str += "<td>" + CreateRadioBtn(row["userid"].ToString()) + "</td>";
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

        public void DeleteBtn_Click(object sender, EventArgs e)
        {

            // התחברות למסד הנתונים
            string connectionString = ConfigurationManager.ConnectionStrings["Database2"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);

            // טעינת הנתונים
            string SQLStr = "SELECT * FROM Users";
            SqlCommand cmd = new SqlCommand(SQLStr, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            int userid;

            List<int> userList = new List<int>();
            // מחיקת שורות שנבחרו מתוך הדאטה סט
            for (int i = 1; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    userid = int.Parse(Request.Form.AllKeys[i].Remove(0, 3));
                    userList.Add(userid);


                }
            }
            int[] userisToDelete = userList.ToArray();

            for (int i = 0; i < userisToDelete.Length; i++)
            {
                DataRow[] dr = ds.Tables[0].Select($"userid = {userisToDelete[i]}");
                dr[0].Delete();

            }
            //  עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetDeleteCommand();
            adapter.Update(ds);

            // הדפסת הטבלה המעודכנת
            string table = BuildUsersTable(ds.Tables[0]);
            tableD.InnerHtml = table;
        }

        public void UpdateBtn_Click(object sender, EventArgs e)

        {
            for (int i = 1; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    Session["userToUpdate"] = Request.Form.AllKeys[i].Remove(0, 3);
                    Response.Redirect("EditUser.aspx");

                }

            }
            message.InnerHtml = "No user was Selected";
        }

        public void Click_Filter(object sender, EventArgs e)
        {
            string SQLStr = BuildSQLStr(Request.Form["filter"]);
            DataSet ds = RetrieveUsersTable(SQLStr);
            string table = BuildUsersTable(ds.Tables[0]);
            tableD.InnerHtml = table;
        }

        public string BuildSQLStr(string filter)
        {

            if (filter.Length == 0)
            {
                return "SELECT * FROM Users";
            }


            string SQLStr = $"SELECT * FROM tblUsers" +
                $" WHERE FirstName LIKE '%{filter}%' OR LastName LIKE '%{filter}%' OR Username LIKE '%{filter}%' ";
            return SQLStr;
        }


    }
}