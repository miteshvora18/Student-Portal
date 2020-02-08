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
    public partial class AddUser : System.Web.UI.Page
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["studentPortalConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i <= 31; i++)
                {
                    ddlDay.Items.Add(i.ToString());
                }
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                for (int i = 1970; i <= 2010; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                for (int i = 1; i <= 6; i++)
                {
                    ddlCurrentSem.Items.Add(i.ToString());
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(conn);

                SqlCommand cmd2 = new SqlCommand("Select username from users where username='"+txtUsername.Text+"'", con);
                con.Open();
                SqlDataReader dr = cmd2.ExecuteReader();
                if (dr.HasRows)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Username already exists..try different one.')", true);
                }
                else
                {
                    con.Close();
                    SqlCommand cmd = new SqlCommand("Insert into users values(2,@username,@pass,@name,@address,@dob,@uemail,@uimage,@branch,@curSem,1)", con);
                    //SqlCommand cmd = new SqlCommand("proc_addUser", con);
                    //cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@dob", ddlDay.Text + " - " + ddlMonth.Text + " - " + ddlYear.Text);
                    cmd.Parameters.AddWithValue("@uemail", txtEmail.Text);
                    if (fuImage.FileName != "")
                    {
                        cmd.Parameters.AddWithValue("@uimage", fuImage.FileName);
                        fuImage.SaveAs(Server.MapPath("~/Images/") + fuImage.FileName);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@uimage", "defaultImg.png");
                        //fuImage.SaveAs(Server.MapPath("~/Images/") + "defaultImg.png");
                    }
                    cmd.Parameters.AddWithValue("@branch", "BCA");
                    cmd.Parameters.AddWithValue("@curSem", ddlCurrentSem.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('User is successfully registered')", true);
                    txtAddress.Text = txtEmail.Text = txtName.Text = txtUsername.Text = "";
                    ddlCurrentSem.SelectedIndex = ddlDay.SelectedIndex = ddlMonth.SelectedIndex = ddlYear.SelectedIndex = 0;
                    con.Close();
                }
            }
            catch (Exception e1)
            {
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Error..Try again')", true);
            }
        }
    }
}
