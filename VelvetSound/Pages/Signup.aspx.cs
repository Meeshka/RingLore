using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VelvetSound.Models;
namespace VelvetSound.Pages
{
    
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic left intentionally minimal; form handling is in btnSend_Click.
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            // Собрать данные из формы и вставить пользователя
            try
            {
                User user = new User();
                user.fName = Request.Form["fName"];
                user.lName = Request.Form["lName"];
                user.username = Request.Form["username"];
                user.pass = Request.Form["pass"];
                user.city = Request.Form["city"];
                user.phone = Request.Form["phone"];
                user.email = Request.Form["email"];
                user.address = Request.Form["address"];
                user.gender = Request.Form["gender"];
                DateTime bd;
                if (DateTime.TryParse(Request.Form["birthday"], out bd)) user.birthday = bd;

                Helper.Insert(user);
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                // показать сообщение об ошибке в msg (если есть)
                var msg = this.FindControl("msg") as System.Web.UI.HtmlControls.HtmlGenericControl;
                if (msg != null) msg.InnerText = "Error: " + ex.Message;
            }
        }
    }
}
