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
    public partial class Main : System.Web.UI.MasterPage
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
                    return "0";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("login.aspx");

            home.HRef = "~/Home.aspx?uid=" + uid ;
            editProfile.HRef = "~/EditProfile.aspx?uid=" + uid ;
            changePass.HRef = "~/ChangePass.aspx?uid=" + uid  ;
            download.HRef = "~/Downloads.aspx?uid=" + uid;

            if (!IsPostBack)
            {
                SqlConnection con = null;
                try
                {
                    con = new SqlConnection(conn);
                    SqlCommand cmd = new SqlCommand("Select username from users where uid='"+uid+"'",con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            lblUsername.Text = "Welcome, " + dr[0].ToString();
                        }
                    }
                    con.Close();
                }
                catch (Exception e1)
                {
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error.." + e1.Message + "')", true);
                }
            }
        }
    }
}
