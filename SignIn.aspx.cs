using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;

public partial class Home : System.Web.UI.Page
{
    string connStr = WebConfigurationManager.ConnectionStrings["NKPDatabase"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        FaceBookConnect.API_Key = "896389993761690";
        FaceBookConnect.API_Secret = "8f3ba375dedcf3aad052686c7dd5e422";
        if (!IsPostBack)
        {
            if (Request.QueryString["error"] == "access_denied")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                return;
            }

            string code = Request.QueryString["code"];
            if (!string.IsNullOrEmpty(code))
            {
                string data = FaceBookConnect.Fetch(code, "me");
                FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);
                Session["FbID"] = faceBookUser.Id;
                Session["FbUsername"] = faceBookUser.UserName;
                Session["FbName"] = faceBookUser.Name;
                Session["FbEmail"] = faceBookUser.Email;
            }
        }
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand comm = new SqlCommand("SELECT * from dbo.Customer where Email = @user and Password = @pass", conn);
        comm.Parameters.Add("@user", SqlDbType.VarChar, 50).Value = EmailTb.Text;
        comm.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = PwdTb.Text;
        try
        {
            conn.Open();

            SqlDataReader reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                Session["user"] = EmailTb.Text;
                //valid.Text = "Successful Login !";
                Response.Redirect("Profile.aspx");
            }
            else
            {
                valid.Text = "Invalid Email or Password !";
            }
        }

        catch (Exception ex)
        {
            valid.Text = "Error : " + ex;
        }
        finally
        { conn.Close(); }
    }

    protected void FBSignIn_Click(object sender, EventArgs e)
    {
        FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
    }
}

public class FaceBookUser
{
    public string Id { get; set; }
    public string Name { get; set; }
    public string UserName { get; set; }
    public string PictureUrl { get; set; }
    public string Email { get; set; }
}