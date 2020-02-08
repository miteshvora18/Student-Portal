using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace StudentPortal
{
    public partial class pass : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        public string uid
        {
            get
            {
                if (Request.QueryString["uid"] != null)
                {
                    return Request.QueryString["uid"];
                }
                else
                {
                    return "1";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("login.aspx");
            
            if(!IsPostBack)
            {
                if (Convert.ToInt32(Session["user"]) == 1)
                {
                    hyBack.NavigateUrl = "AdminHome.aspx";
                }
                else if (Convert.ToInt32(Session["user"]) == 2)
                {
                    hyBack.NavigateUrl = "Home.aspx?uid="+uid;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string newPass = "";
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(conn);
                SqlCommand cmd = null;
                cmd = new SqlCommand("Select password from users where uid='" + uid + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if (txtExistingPass.Text == dr[0].ToString())
                        {
                            newPass = txtPass.Text;
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Your existing password is incorrect')", true);
                        }
                    }
                }
                con.Close();
                con.Open();
                SqlCommand cmd2 = new SqlCommand("Update users set password=@pass where uid='"+uid+"'", con);
                cmd2.Parameters.AddWithValue("@pass", txtPass.Text);
                cmd2.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Your password has been changed successfully.')", true);
            }
            catch (Exception e1)
            {
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('"+e1.Message+"')", true);
            }
        }
    }
}
