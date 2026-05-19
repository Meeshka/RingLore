using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VelvetSound.Models;

namespace VelvetSound
{
    public partial class EditUser : System.Web.UI.Page
    {

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (Session["userToUpdate"] == null)
        //    {
        //        Response.Redirect("UpdateDeleteUsers.aspx");
        //        return;
        //    }

        //    if (!IsPostBack)
        //    {
        //        int userId = int.Parse(Session["userToUpdate"].ToString());

        //        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True";
        //        SqlConnection con = new SqlConnection(connectionString);

        //        string SQLStr = "SELECT userName, password FROM Users WHERE userId = @id";
        //        SqlCommand cmd = new SqlCommand(SQLStr, con);
        //        cmd.Parameters.AddWithValue("@id", userId);

        //        con.Open();
        //        SqlDataReader dr = cmd.ExecuteReader();

        //        if (dr.Read())
        //        {
        //            username.Value = dr["username"].ToString();
        //            password.Value = dr["pass"].ToString();
        //        }

        //        con.Close();
        //    }
        //}


        // Pseudocode / Plan (detailed):
        // 1. Run only on initial GET (!IsPostBack).
        // 2. Validate Session["userToUpdate"]:
        //    - If null or not an integer, redirect to UpdateDeleteUsers.aspx (avoid startup crash).
        // 3. Build a safe SQL string using the parsed integer id (no surrounding quotes).
        // 4. Call Helper.RetrieveTable(SQLStr) inside a try/catch to handle retrieval errors.
        // 5. Validate returned DataSet:
        //    - Ensure it's not null, contains table Helper.tblName, and has at least one row.
        //    - If any check fails, redirect to UpdateDeleteUsers.aspx to avoid IndexOutOfRange.
        // 6. Read row values defensively:
        //    - Use null-safe conversions for string fields.
        //    - Parse birthday with DateTime.TryParse and format as "yyyy-MM-dd" (fixes "yyy" bug).
        //    - Ensure city is assigned even if birthday is null (fixes misplaced assignment).
        // 7. Keep failures graceful (redirect) rather than throwing on site start.

        // Replaces the existing Page_Load method.
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Validate session entry
                if (Session["userToUpdate"] == null)
                {
                    Response.Redirect("EditUser.aspx");
                    return;
                }

                int userId;
                if (!int.TryParse(Session["userToUpdate"].ToString(), out userId))
                {
                    Response.Redirect("EditUser.aspx");
                    return;
                }

                // Build SQL (userId is an integer so safe to inline here given no parameter API)
                string SQLStr = "SELECT * FROM " + Helper.tblName + " WHERE UserId = " + userId;

                DataSet ds = null;
                try
                {
                    ds = Helper.RetrieveTable(SQLStr);
                }
                catch (Exception)
                {
                    // Retrieval failed; avoid crashing the site on startup
                    Response.Redirect("EditUser.aspx");
                    return;
                }

                if (ds == null || !ds.Tables.Contains(Helper.tblName) || ds.Tables[Helper.tblName].Rows.Count == 0)
                {
                    Response.Redirect("EditUser.aspx");
                    return;
                }

                DataRow dr = ds.Tables[Helper.tblName].Rows[0];

                firstName.Value = dr["FirstName"]?.ToString() ?? string.Empty;
                lastName.Value = dr["LastName"]?.ToString() ?? string.Empty;
                username.Value = dr["username"]?.ToString() ?? string.Empty;
                pass.Value = dr["Password"]?.ToString() ?? string.Empty;
                city.Value = dr["Town"]?.ToString() ?? string.Empty;
                phone.Value = dr["tel"]?.ToString() ?? string.Empty;
                address.Value = dr["address"]?.ToString() ?? string.Empty;
                email.Value = dr["Email"]?.ToString() ?? string.Empty;
                SetSelectedGender(dr["gender"]?.ToString());

                if (!dr.IsNull("BirthDate"))
                {
                    DateTime bd;
                    if (DateTime.TryParse(dr["BirthDate"].ToString(), out bd))
                    {
                        // Use four-digit year
                        birthday.Value = bd.ToString("yyyy-MM-dd");
                    }
                }
            }
        }

        public void UpdateUser(object sender, EventArgs e)
        {
            User user = new User();
            user.fName = firstName.Value;
            user.lName = lastName.Value;
            user.username = username.Value;
            user.pass = pass.Value;
            user.city = city.Value;
            user.phone = phone.Value;
            user.address = address.Value;
            user.email = email.Value;
            user.gender = GetSelectedGender();
            user.birthday = DateTime.Parse(birthday.Value);
            user.userId = int.Parse(Session["userToUpdate"].ToString());
            Helper.Update(user);
            Response.Redirect("/Pages/Users.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int userId = int.Parse(Session["userToUpdate"].ToString());

            User user = new User();
            user.userId = userId;
            user.fName = firstName.Value;
            user.lName = lastName.Value;
            user.username = username.Value;
            user.pass = pass.Value;
            user.city = city.Value;
            user.phone = phone.Value;
            user.address = address.Value;
            user.email = email.Value;
            user.gender = GetSelectedGender();

            DateTime bd;
            if (DateTime.TryParse(birthday.Value, out bd))
            {
                user.birthday = bd;
            }

            Helper.Update(user);
            Response.Redirect("/Pages/Users.aspx");
        }

        private void SetSelectedGender(string gender)
        {
            genderMale.Checked = string.Equals(gender, "male", StringComparison.OrdinalIgnoreCase);
            genderFemale.Checked = string.Equals(gender, "female", StringComparison.OrdinalIgnoreCase);
            genderOther.Checked = string.Equals(gender, "other", StringComparison.OrdinalIgnoreCase);

            if (!genderMale.Checked && !genderFemale.Checked && !genderOther.Checked)
            {
                genderMale.Checked = true;
            }
        }

        private string GetSelectedGender()
        {
            if (genderFemale.Checked)
            {
                return "female";
            }

            if (genderOther.Checked)
            {
                return "other";
            }

            return "male";
        }
    }
}
