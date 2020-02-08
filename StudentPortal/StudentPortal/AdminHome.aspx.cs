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
    public partial class AdminHome : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataBind();
                SqlConnection con = null;
                try
                {
                    con = new SqlConnection(conn);
                    SqlCommand cmd = new SqlCommand("Select * from users where rid='2' and uvalid='1'",con);
                    con.Open();
                    SqlDataReader dr=cmd.ExecuteReader();
                    gvUsers.DataSource = dr;
                    gvUsers.DataBind();
                    con.Close();
                }
                catch (Exception e1)
                {
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error..Try again')", true);
                }
                if (Request.QueryString["msg"] != null)
                {
                    if (Request.QueryString["msg"] == "success")
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('User marks has been entered successfully')", true);
                    }
                }
            }
        }

        protected void gvUsers_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string uid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "uid"));
                HyperLink hyUid = (HyperLink)e.Row.FindControl("hyUid");
                hyUid.NavigateUrl = "~/Marks.aspx?uid="+ uid;
            }
        }
    }
}
