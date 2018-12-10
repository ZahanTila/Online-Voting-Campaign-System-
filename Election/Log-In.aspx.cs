using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Election
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Dataconnection"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Registration where Email='" + Email.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' This Username is already in use. ')</script>");
                conn.Open();
                string checkpass = "select Password From Registration where Email='" + Email.Text + "'";
                SqlCommand comm = new SqlCommand(checkpass, conn);
                string Password1 = comm.ExecuteScalar().ToString();
                if (Password1 == Password.Text)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Log-in Successful ')</script>");
                    Response.Redirect("Admin.aspx");
                    
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Password Incorrect ')</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Wrong Email ')</script>");
            }
            
        }
    }
}