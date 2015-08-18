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
        
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {

    }
}