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
    public partial class Home : System.Web.UI.Page
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
            if(!IsPostBack)
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
                            lblName.Text = dr[4].ToString();
                            lblAddress.Text = dr[5].ToString();
                            lblDob.Text = Convert.ToDateTime(dr[6]).ToShortDateString();
                            lblEmail.Text = dr[7].ToString();
                            lblCurSem.Text = dr[10].ToString();
                            imgUser.ImageUrl = "~/Images/" + dr[8].ToString();
                        }
                    }
                    con.Close();

                    SqlCommand cmd2 = new SqlCommand("Select sname,earnedMarks from subjects s join marks m on s.sid=m.sid where uid='"+uid+"'",con);
                    con.Open();
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    gvMarks.DataSource = dr2;
                    gvMarks.DataBind();
                    con.Close();
                }
                catch (Exception e1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + e1.Message + "')", true);
                }
            }
        }
    }
}
