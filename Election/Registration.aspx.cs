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
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Password.Text == Cpassword.Text)
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Dataconnection"].ConnectionString);
                conn.Open();
                string insertdata = "insert into Registration (Name,Birth,Gender,Email,Mobile,Password) values (@Name,@Birth,@Gender,@Email,@Mobile,@Password)";
                SqlCommand com = new SqlCommand(insertdata, conn);
                com.Parameters.AddWithValue("@Name", Name.Text);
                com.Parameters.AddWithValue("@Birth", Birth.Text);
                com.Parameters.AddWithValue("@Gender", Gender.Text);
                com.Parameters.AddWithValue("@Email", Email.Text);
                com.Parameters.AddWithValue("@Mobile", Mobile.Text);
                com.Parameters.AddWithValue("@Password", Cpassword.Text);



                com.ExecuteNonQuery();
                //Response.Write("Registration Successfull");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Registration Successful ')</script>");
                conn.Close();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Password Do Not Matched')</script>");
            }
            
        }
    }
}