using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_login_Click(object sender, EventArgs e)
    {
       
        if (TextBox_email.Text == "Admin" && TextBox_pass.Text == "1234")
        {
            // opret din session som er "beviset" på at du er logget ind
            Session["bruger_id"] = true;
            // Send brugeren videre til administrationssiden
            Response.Redirect("Default.aspx");
        }
        else // hvis brugeren ikke findes i databasen
        {
            // meddelelse til brugeren om at han ikke er logget ind
            Label_besked.Text = "<div class='span8'><div class='alert alert-error'>Kombinationen af din email og password findes ikke i databasen</div></div>";
        }

    }
}