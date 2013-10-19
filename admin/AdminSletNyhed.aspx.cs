using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_AdminSletNyhed : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
        cmd.CommandText = "SELECT * FROM musicon.nyheder WHERE Id = @urlId";
        cmd.Parameters.Add("@urlId", SqlDbType.Int).Value = Request.QueryString["nyhedsId"];
        //ben for forbindelsen til databasen
        conn.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            sletID.Text = reader["Id"].ToString();
            sletOverskrift.Text = reader["overskrift"].ToString();
            sletManchet.Text = reader["manchet"].ToString();
            sletTekst.Text = reader["tekst"].ToString();
            sletForfatter.Text = reader["forfatter"].ToString();
            sletImg.Text = reader["img"].ToString();
            sletOprettetDen.Text = reader["oprettetDen"].ToString();
        }


        // Luk for forbindelsen til databasen
        // reader.Close();
        conn.Close();
    }

    protected void sletButton_Click(object sender, EventArgs e)
    {
        //	opret	forbindelsen	til	databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        //	opret	et	SqlCommand	object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //Sql	sætningen
        cmd.CommandText = "DELETE	FROM musicon.nyheder WHERE	Id = @urlId";

        //	Parametrene	@brugernavn	og	@password	i	sql	sætningen	ovenover	tilføjes. WHAT??!
        cmd.Parameters.Add("@urlId", SqlDbType.Int).Value = Request.QueryString["nyhedsId"];

        //	åben	forbindelsen	til	databasen
        conn.Open();

        //	Udfør	sql	komandoen
        cmd.ExecuteNonQuery();

        //	luk	forbindelsen til databasen
        conn.Close();

        //Udskriver beskeden om at nyheden er slettet.
        nyhedSletNyhed.Text = "<div class='span8'><div class='alert alert-success'>Nyheden er slettet</div></div>";

        //sletter indholdet fra tekstboksene
        sletID.Text = "";
        sletOverskrift.Text = "";
        sletManchet.Text = "";
        sletTekst.Text = "";
        sletForfatter.Text = "";
        sletImg.Text = "";
        sletOprettetDen.Text = "";

    }

}