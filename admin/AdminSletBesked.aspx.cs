using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_AdminSletBesked : System.Web.UI.Page
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
        cmd.CommandText = "SELECT * FROM beskeder WHERE Id = @urlId";
        cmd.Parameters.Add("@urlId", SqlDbType.Int).Value = Request.QueryString["beskedId"];
        //ben for forbindelsen til databasen
        conn.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            sletID.Text = reader["Id"].ToString();
            sletFornavn.Text = reader["fornavn"].ToString();
            sletEfternavn.Text = reader["efternavn"].ToString();
            sletEmail.Text = reader["email"].ToString();
            sletEmne.Text = reader["emne"].ToString();
            sletBesked.Text = reader["besked"].ToString();
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
        cmd.CommandText = "DELETE  FROM beskeder WHERE	Id = @urlId";

        //	Parametrene	@brugernavn	og	@password	i	sql	sætningen	ovenover	tilføjes
        cmd.Parameters.Add("@urlId", SqlDbType.Int).Value = Request.QueryString["beskedId"];

        //	åben	forbindelsen	til	databasen
        conn.Open();

        //	Udfør	sql	komandoen
        cmd.ExecuteNonQuery();

        //	luk	forbindelsen til databasen
        conn.Close();

        //Udskriver beskeden om at beskeden er slettet.
        beskederSletBesked.Text = "<div class='span8'><div class='alert alert-success'>Beskeden er slettet</div></div>";

        //sletter indholdet fra tekstboksene
        sletID.Text = "";
        sletFornavn.Text = "";
        sletEfternavn.Text = "";
        sletEmail.Text = "";
        sletEmne.Text = "";
        sletBesked.Text = "";
        sletOprettetDen.Text = "";

    }
}