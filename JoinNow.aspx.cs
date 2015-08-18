using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using DotNetOpenAuth.OAuth.Messages;
using DotNetOpenAuth.OAuth;
using DotNetOpenAuth.Messaging;


public partial class Home : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["NKPDatabase"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand comm = new SqlCommand("SELECT * from dbo.Customer where Email = @user", conn);
            comm.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = EmailTb.Text;
            try
            {
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                if (reader.HasRows)
                {
                    valid.Text = "This Email is already Registered. Try Signing In or Register with a new Email Address !";
                    reader.Close();
                }
                else
                {
                    reader.Close();

                    int aa = 0;

                    try
                    {


                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = conn;
                        cmd.CommandText = "insert into dbo.Customer (Name, Email, Password, Age, Gender, Height, Weight, Disease) values ('" + NameTb.Text + "','" + EmailTb.Text + "','" + PwdTb.Text + "','" + AgeTb.Text + "','" + Gender.SelectedValue.ToString() + "','" + HeightTb.Text + "','" + WeightTb.Text + "','" + DiseaseList.SelectedValue.ToString() + "')";
                        aa = cmd.ExecuteNonQuery();
                        if (aa == 0)
                        { valid.Text = "Unsuccessful Registration !";
                            NameTb.Text = " "; EmailTb.Text = " "; PwdTb.Text = " "; AgeTb.Text = " "; HeightTb.Text = " "; WeightTb.Text = " ";
                        }
                        else
                        { valid.Text = "Successful Registration !";
                            NameTb.Text = " "; EmailTb.Text = " "; PwdTb.Text = " "; AgeTb.Text = " "; HeightTb.Text = " "; WeightTb.Text = " ";
                        }



                    }
                    catch (Exception err)
                    {

                        valid.Text += "Unsuccessful Registration !";


                    }
                }
            }
            catch (Exception ex)
            {
                valid.Text = "Unsuccessful Registration !";
            }
            finally
            {
                conn.Close();
            }
        }
        else
            valid.Text = "All fields are required !";
    }

    //protected void GmailBtn_Click(object sender, EventArgs e)
    //{
    //    const string clientID = "12345.apps.googleusercontent.com";
    //    const string clientSecret = "XXXYYY111";
    //    const string redirectUri = "http://www.yourdomain.com/oauth2callback";
    //    AuthorizationServerDescription server = new AuthorizationServerDescription
    //{
    //    AuthorizationEndpoint = new Uri("https://accounts.google.com/o/oauth2/auth"),
    //    TokenEndpoint = new Uri("https://accounts.google.com/o/oauth2/token"),
    //    ProtocolVersion = ProtocolVersion.V20,
    //};
    //    List<string> scope = new List<string>
    //{
    //    GoogleScope.ImapAndSmtp.Name,
    //    GoogleScope.EmailScope.Name
    //};

    //}
}