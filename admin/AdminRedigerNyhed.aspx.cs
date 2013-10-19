using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_adminRedigerNyhed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // opret forbindelse til databasen
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            //if (@urlId == null)
            //{
            //    @urlId = "1";
            //}
            // SQL strengen
            cmd.CommandText = "SELECT * FROM musicon.nyheder WHERE Id = @brian";
            cmd.Parameters.Add("@brian", SqlDbType.Int).Value = Request.QueryString["nyhedsId"];
            //ben for forbindelsen til databasen
            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                redigerOverskrift.Text = reader["overskrift"].ToString();
                redigerManchet.Text = reader["manchet"].ToString();
                redigerTekst.Text = reader["tekst"].ToString();
                redigerForfatter.Text = reader["forfatter"].ToString();
                redigerImg.Text = reader["img"].ToString();
            }


            // Luk for forbindelsen til databasen
            // reader.Close();
            conn.Close();
        }
    }

    protected void redigerButton_Click(object sender, EventArgs e)
    {
        //	opret	forbindelsen	til	databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //Sql	sætningen
        cmd.CommandText = "UPDATE musicon.nyheder SET overskrift=@overskrift, manchet=@manchet, tekst=@tekst, forfatter=@forfatter, img=@img, lastChanged=@lastChanged WHERE Id =@id";
        //Opdaterer tabellen "nyheder" og indstiller rækkerne til det som variblerne (f.x. @overskrift) henviser til.

        //	Parametrene	@brugernavn	og	@password	i	sql	sætningen	ovenover	tilføjes
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Request.QueryString["nyhedsId"];
        cmd.Parameters.Add("@overskrift", SqlDbType.NVarChar).Value = redigerOverskrift.Text;
        cmd.Parameters.Add("@manchet", SqlDbType.NVarChar).Value = redigerManchet.Text;
        cmd.Parameters.Add("@tekst", SqlDbType.NText).Value = redigerTekst.Text;
        cmd.Parameters.Add("@forfatter", SqlDbType.NVarChar).Value = redigerForfatter.Text;
        cmd.Parameters.Add("@img", SqlDbType.NVarChar).Value = redigerImg.Text;
        cmd.Parameters.Add("@lastChanged", SqlDbType.DateTime).Value = DateTime.Now;

        //	åben	forbindelsen	til	databasen
        conn.Open();

        //	Udfør	sql	komandoen
        cmd.ExecuteNonQuery();

        //	luk	forbindelsen	til	databasen
        conn.Close();

        //	Besked	til	brugeren	om	at	beskeden	er	modtaget
        nyhedRedigeretBesked.Text = "<div class='span8 offset2'><div class='alert alert-success'>Succes! Nyheden er nu oprettet</div></div>";

        redigerOverskrift.Text = "";
        redigerManchet.Text = "";
        redigerTekst.Text = "";
        redigerForfatter.Text = "";
        redigerImg.Text = "";
    }
}