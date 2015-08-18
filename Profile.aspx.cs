using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["NKPDatabase"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        String name = (String)Session["user"];
        if (Session["user"] == null)
        {
            Response.Redirect("JoinNow.aspx");
        }
        else
        {
            
            welcome.Text = name;

            SqlConnection conn = new SqlConnection(connStr);
            SqlDataReader reader;
            SqlCommand comm = new SqlCommand("SELECT * FROM dbo.Customer WHERE Email = @email", conn);
            comm.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = name;
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                reader.Read();
                    YourName.Text = reader["Name"].ToString();
                    SelectedDisease.Text = reader["Disease"].ToString();
                    YourEmail.Text = reader["Email"].ToString();
                    YourPassword.Text = reader["Password"].ToString();
                    YourAge.Text = reader["Age"].ToString();
                    YourGender.Text = reader["Gender"].ToString();
                    YourHeight.Text = reader["Height"].ToString();
                    YourWeight.Text = reader["Weight"].ToString();
                reader.Close();
            }
            catch(Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }
            }
    }


    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.Redirect("SignIn.aspx");
    }
}