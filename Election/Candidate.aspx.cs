﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Election
{
    public partial class Candidate : System.Web.UI.Page
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
                string insertdata = "insert into Candidate (Name,District,Area) values (@Name,@Dis,@Area)";
                SqlCommand com = new SqlCommand(insertdata, conn);
                com.Parameters.AddWithValue("@Name", Name.Text);
                com.Parameters.AddWithValue("@Dis", District.Text + ",Bangladesh");
                com.Parameters.AddWithValue("@Area", Area.Text);
                
               


                com.ExecuteNonQuery();
                //Response.Write("Registration Successfull");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert(' Registration Successfull ')</script>");
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }
    }
}