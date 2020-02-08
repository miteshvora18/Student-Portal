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
    public partial class EdtiProfile : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        string img = "";
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
            string dob = "";
            
            if (!IsPostBack)
            {
                #region Bind GridView
                for (int i = 01; i <= 31; i++)
                {
                    ddlDay.Items.Add(i.ToString());
                }
                for (int i = 01; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                for (int i = 1970; i <= 2010; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                #endregion

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
                            txtName.Text = dr[4].ToString();
                            txtAddress.Text = dr[5].ToString();
                            dob = Convert.ToDateTime(dr[6]).ToString("d/M/yyyy");
                            txtEmail.Text = dr[7].ToString();
                            string[] dobSplit = new string[3];
                            dobSplit = dob.Split('-');
                            int day = Convert.ToInt32(dobSplit[0]);
                            if (day < 10)
                            {
                                dobSplit[0].Remove(0);
                            }
                            int month = Convert.ToInt32(dobSplit[1]);
                            if (month < 10)
                            {
                                dobSplit[1].Remove(0);
                            }
                            ddlDay.Text = dobSplit[0];
                            ddlMonth.Text = dobSplit[1];
                            ddlYear.Text = dobSplit[2];
                            img= dr[8].ToString();
                        }
                    }
                    con.Close();
                }
                catch (Exception e1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + e1.Message + "')", true);
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;

            string existingImg = "";

            #region Get existing image
            try
            {
                con = new SqlConnection(conn);
                SqlCommand cmd2 = new SqlCommand("Select uimage from users where uid=@uid", con);
                cmd2.Parameters.AddWithValue("@uid", uid);
                con.Open();
                SqlDataReader dr = cmd2.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        existingImg = dr["uimage"].ToString();
                    }
                }
                con.Close();
            }
            catch (Exception e2)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error:" + e2.Message + "')", true);
            }
            #endregion
            try
            {
                con = new SqlConnection(conn);
                SqlCommand cmd = null;
                cmd = new SqlCommand("Update users set name=@name,address=@address,dob=@dob,uemail=@uemail,uimage=@uimage where uid='" + uid + "'", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                DateTime date = Convert.ToDateTime(ddlDay.Text + "-" + ddlMonth.Text + "-" + ddlYear.Text);
                cmd.Parameters.AddWithValue("@dob", date);
                cmd.Parameters.AddWithValue("@uemail", txtEmail.Text);
                if (fuImage.HasFile)
                {
                    cmd.Parameters.AddWithValue("@uimage", fuImage.FileName);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@uimage", existingImg);
                }
                con.Open();
                cmd.ExecuteNonQuery();
                if (fuImage.HasFile)
                {
                    fuImage.SaveAs(Server.MapPath("~/Images/") + fuImage.FileName);
                }
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Your profile has been updated.')", true);
            }
            catch (Exception e1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error:" + e1.Message + "')", true);
            }
        }
    }
}
