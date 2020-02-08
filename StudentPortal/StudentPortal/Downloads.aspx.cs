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
    public partial class Downloads : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        public string uid
        {
            get
            {
                if (Request.QueryString["uid"] != null)
                {
                    return Request.QueryString["uid"].ToString();
                }
                else
                {
                    return "0";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            int curSem = 0;
            if (!IsPostBack)
            {
                SqlConnection con = null;
                try
                {
                    con = new SqlConnection(conn);
                    SqlCommand cmd = new SqlCommand("Select * from users where uid=@uid", con);
                    cmd.Parameters.AddWithValue("@uid", uid);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            curSem = Convert.ToInt32(dr[10].ToString());
                        }
                    }
                    con.Close();
                }
                catch (Exception e1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + e1.Message + "')", true);
                }

                if (curSem == 0)
                {
                    Response.Redirect("Home.aspx");
                }
                if (curSem == 1)
                {
                    tr1a.Visible = true;
                    tr1b.Visible = true;
                }
                if (curSem == 2)
                {
                    tr2.Visible = true;
                }
                if (curSem == 3)
                {
                    tr3.Visible = true;
                }
                if (curSem == 4)
                {
                    tr4.Visible = true;
                }
                if (curSem == 5)
                {
                    tr5.Visible = true;
                }
                if (curSem == 6)
                {
                    tr6.Visible = true;
                }
            }
        }
    }
}
