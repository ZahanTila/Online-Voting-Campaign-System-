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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Dataconnection"].ConnectionString);
                conn.Open();
                string insertdata = "insert into News (District,Area,Center,Total_Vote,Party,Vote) values (@Dis,@Area,@Center,@TV,@Party,@Vote)";
                SqlCommand com = new SqlCommand(insertdata, conn);
                com.Parameters.AddWithValue("@Dis", District.Text + ",Bangladesh");
                com.Parameters.AddWithValue("@Area", Area.Text);
                com.Parameters.AddWithValue("@Center",Cname.Text);
                com.Parameters.AddWithValue("@TV", Totalvc.Text);
                com.Parameters.AddWithValue("@Party", Partyname.Text);
                com.Parameters.AddWithValue("@Vote", Votecount.Text);



                com.ExecuteNonQuery();
                //Response.Write("Registration Successfull");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Update Successfull ')</script>");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }
    }
}