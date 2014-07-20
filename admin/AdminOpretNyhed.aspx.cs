using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_adminOpretNyhed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sendButton_Click(object sender, EventArgs e)
    {
        // opret forbindelse til databasen

        // FELTET MELLEM [] SKAL ÆNDRES SÅ DET PASSER TIL NAVNET PÅ DIN CONNECTIONSTRING - KAN FINDES I WEB.CONFIG FILEN
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        // SQL strengen
        cmd.CommandText = "INSERT INTO nyheder (overskrift, manchet, tekst, forfatter, img) VALUES (@overskrift, @manchet, @tekst, @forfatter, @img)";

        // Tilføj parametrer (input fra brugeren / TextBox fra .aspx siden) til din SQL streng
        cmd.Parameters.Add("@overskrift", SqlDbType.NVarChar).Value = opretOverskrift.Text;
        cmd.Parameters.Add("@manchet", SqlDbType.NVarChar).Value = opretManchet.Text;
        cmd.Parameters.Add("@tekst", SqlDbType.NVarChar).Value = opretTekst.Text;
        cmd.Parameters.Add("@forfatter", SqlDbType.NVarChar).Value = opretForfatter.Text;
        cmd.Parameters.Add("@img", SqlDbType.Text).Value = opretImg.Text;

        // Åben for forbindelsen til databasen
        conn.Open();

        // Udfør SQL komandoen
        cmd.ExecuteNonQuery();

        // Luk for forbindelsen til databasen
        conn.Close();

        // Besked til brugeren om at beskeden er modtaget
        nyhedOprettetBesked.Text = "<div class='span8 offset2'><div class='alert alert-success'>Succes! Nyheden er nu oprettet</div></div>";

        opretOverskrift.Text = "";
        opretManchet.Text = "";
        opretTekst.Text = "";
        opretForfatter.Text = "";
        opretImg.Text = "";
    }
    
}