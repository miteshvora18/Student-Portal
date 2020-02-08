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
    public partial class Marks : System.Web.UI.Page
    {
        public int uid
        {
            get
            {
                if (Request.QueryString["uid"] != null)
                {
                    return Convert.ToInt32(Request.QueryString["uid"]);
                }
                else
                {
                    return 0;
                }
            }
        }
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            int totalSem = 0;
            if (!IsPostBack)
            {
                SqlConnection con = null;
                try
                {
                    con = new SqlConnection(conn);
                    SqlCommand cmd = new SqlCommand("Select currentSem,username from users where uid='"+uid+"'",con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            totalSem = Convert.ToInt32(dr[0].ToString());
                            lblUsername.Text = dr[1].ToString();
                        }
                    }
                    con.Close();
                }
                catch (Exception e1)
                {
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error.." + e1.Message + "')", true);
                }

                if (totalSem == 0)
                {
                    Response.Redirect("AdminHome.aspx");
                }
                if (totalSem < 6)
                {
                    Sem6.Visible = false;
                    if (totalSem < 5)
                    {
                        Sem5.Visible = false;
                        if (totalSem < 4)
                        {
                            Sem4.Visible = false;
                            if (totalSem < 3)
                            {
                                Sem3.Visible = false;
                                if (totalSem < 2)
                                {
                                    Sem2.Visible = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(conn);
                SqlCommand cmd1=null;
                SqlCommand cmd2=null;
                SqlCommand cmd3=null;
                SqlCommand cmd4=null;
                SqlCommand cmd5 = null;
                SqlCommand cmd6 = null;
                if (Sem1.Visible == true)
                {
                    cmd1 = new SqlCommand("Insert into marks values('" + uid + "',1,@earnedMarks1),('" + uid + "',2,@earnedMarks2),('" + uid + "',3,@earnedMarks3),('" + uid + "',4,@earnedMarks4)", con);
                    cmd1.Parameters.AddWithValue("@earnedMarks1", txtSem11.Text);
                    cmd1.Parameters.AddWithValue("@earnedMarks2", txtSem12.Text);
                    cmd1.Parameters.AddWithValue("@earnedMarks3", txtSem13.Text);
                    cmd1.Parameters.AddWithValue("@earnedMarks4", txtSem14.Text);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                }
                if (Sem2.Visible == true)
                {
                    cmd2 = new SqlCommand("Insert into marks values('" + uid + "',5,@earnedMarks5),('" + uid + "',6,@earnedMarks6),('" + uid + "',7,@earnedMarks7),('" + uid + "',8,@earnedMarks8)", con);
                    cmd2.Parameters.AddWithValue("@earnedMarks5", txtSem21.Text);
                    cmd2.Parameters.AddWithValue("@earnedMarks6", txtSem22.Text);
                    cmd2.Parameters.AddWithValue("@earnedMarks7", txtSem23.Text);
                    cmd2.Parameters.AddWithValue("@earnedMarks8", txtSem24.Text);
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }
                if (Sem3.Visible == true)
                {
                    cmd3 = new SqlCommand("Insert into marks values('" + uid + "',9,@earnedMarks9),('" + uid + "',10,@earnedMarks10),('" + uid + "',11,@earnedMarks11),('" + uid + "',12,@earnedMarks12)", con);
                    cmd3.Parameters.AddWithValue("@earnedMarks9", txtSem31.Text);
                    cmd3.Parameters.AddWithValue("@earnedMarks10", txtSem32.Text);
                    cmd3.Parameters.AddWithValue("@earnedMarks11", txtSem33.Text);
                    cmd3.Parameters.AddWithValue("@earnedMarks12", txtSem34.Text);
                    con.Open();
                    cmd3.ExecuteNonQuery();
                    con.Close();
                }
                if (Sem4.Visible == true)
                {
                    cmd4 = new SqlCommand("Insert into marks values('" + uid + "',13,@earnedMarks13),('" + uid + "',14,@earnedMarks14),('" + uid + "',15,@earnedMarks15),('" + uid + "',16,@earnedMarks16)", con);
                    cmd4.Parameters.AddWithValue("@earnedMarks13", txtSem41.Text);
                    cmd4.Parameters.AddWithValue("@earnedMarks14", txtSem42.Text);
                    cmd4.Parameters.AddWithValue("@earnedMarks15", txtSem43.Text);
                    cmd4.Parameters.AddWithValue("@earnedMarks16", txtSem44.Text);
                    con.Open();
                    cmd4.ExecuteNonQuery();
                    con.Close();
                }
                if (Sem5.Visible == true)
                {
                    cmd5 = new SqlCommand("Insert into marks values('" + uid + "',17,@earnedMarks17),('" + uid + "',18,@earnedMarks18),('" + uid + "',19,@earnedMarks19),('" + uid + "',20,@earnedMarks20)", con);
                    cmd5.Parameters.AddWithValue("@earnedMarks17", txtSem51.Text);
                    cmd5.Parameters.AddWithValue("@earnedMarks18", txtSem52.Text);
                    cmd5.Parameters.AddWithValue("@earnedMarks19", txtSem53.Text);
                    cmd5.Parameters.AddWithValue("@earnedMarks20", txtSem54.Text);
                    con.Open();
                    cmd5.ExecuteNonQuery();
                    con.Close();
                }
                if (Sem6.Visible == true)
                {
                    cmd6 = new SqlCommand("Insert into marks values('" + uid + "',21,@earnedMarks21),('" + uid + "',22,@earnedMarks22),('" + uid + "',23,@earnedMarks23),('" + uid + "',24,@earnedMarks24)", con);
                    cmd6.Parameters.AddWithValue("@earnedMarks21", txtSem61.Text);
                    cmd6.Parameters.AddWithValue("@earnedMarks22", txtSem62.Text);
                    cmd6.Parameters.AddWithValue("@earnedMarks23", txtSem63.Text);
                    cmd6.Parameters.AddWithValue("@earnedMarks24", txtSem64.Text);
                    con.Open();
                    cmd6.ExecuteNonQuery();
                    con.Close();
                }
                SqlCommand cmd = new SqlCommand("Update users set uvalid='0' where uid='"+uid+"'",con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminHome.aspx?msg=success");
            }
            catch (Exception e1)
            {
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error.." + e1.Message + "')", true);
            }
        }
    }
}
