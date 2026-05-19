using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VelvetSound.Pages
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // בדיקה בטוחה: אם ה-Session ריק, נתייחס אליו כאל false (משתמש לא מחובר)
            bool isLoggedIn = Session["login"] != null && (bool)Session["login"];

            if (!isLoggedIn)
            {
                // משתמש לא מחובר - הסתרת התפריטים
                AboutCharacters.Style.Add("display", "none");
                Aboutlotr.Style.Add("display", "none");
                InteractiveMap.Style.Add("display", "none");
                JJRTolkien.Style.Add("display", "none");
                MagicalCreatures.Style.Add("display", "none");
                Users.Style.Add("display", "none");
                // הסתרת התווית של המשתמש
                lblUser.Visible = false;
            }
            else
            {
                // משתמש מחובר - הצגת התפריטים
                AboutCharacters.Style.Add("display", "block");
                Aboutlotr.Style.Add("display", "block");
                InteractiveMap.Style.Add("display", "block");
                JJRTolkien.Style.Add("display", "block");
                MagicalCreatures.Style.Add("display", "block");
                Users.Style.Add("display", "block");
                // הצגת שם המשתמש בפינה העליונה בגוון בהיר
                lblUser.Visible = true;
                var userName = Session["user"] as string;
                lblUser.Text = !string.IsNullOrEmpty(userName) ? $"Hello, {HttpUtility.HtmlEncode(userName)}" : "Hello";
                lblUser.Style.Add("color", "#fff8dc"); // cornsilk light color
                lblUser.Style.Add("font-weight", "600");
                lblUser.Style.Add("font-size", "1.05rem");
            }
        }
    }
}