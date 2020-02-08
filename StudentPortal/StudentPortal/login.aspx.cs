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
    public partial class login : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["msg"] == "logout")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('You are now logged out.')", true);
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUsername.Text != "" || txtPassword.Text != "")
                {
                    SqlConnection con = new SqlConnection(conn);
                    SqlCommand cmd = new SqlCommand("Select rid,uid from users where username=@user and password=@pass",con);
                    cmd.Parameters.AddWithValue("@user", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            if (dr[0].ToString() == "1")
                            {
                                Session["user"] = "1";
                                con.Close();
                                Response.Redirect("AdminHome.aspx");
                            }
                            else if (dr[0].ToString() == "2")
                            {
                                Session["user"] = "2";
                                Response.Redirect("Home.aspx?uid="+dr[1].ToString());
                                con.Close();
                            }
                            else if (dr[0].ToString() == "3")
                            {
                                Session["user"] = "3";
                                con.Close();
                                Response.Redirect("Home.aspx");
                            }
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Invalid username and/or password combination')", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Username and password are required')", true);
                }
            }
            catch (Exception e1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('"+e1.Message+"')", true);
            }
        }
    }
}
