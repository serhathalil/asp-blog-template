using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_kategoriguncelle : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string kategoriID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminG.aspx");
        }

        kategoriID = Request.QueryString["kategoriID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdkguncelle = new SqlCommand("select * from Kategori where kategoriID='" + kategoriID + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            txt_GKAdi.Text = row["kategoriAdi"].ToString();
            txtGKSira.Text = row["kategoriSira"].ToString();
            txtGKAdet.Text = row["kategoriAdet"].ToString();
        }
    }
    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        if (fuGresim.HasFile)
        {
            fuGresim.SaveAs(Server.MapPath("/kategoriResim" + fuGresim.FileName));
            SqlCommand cmdkguncelle = new SqlCommand("Update Kategori Set kategoriAdi='" + txt_GKAdi.Text + "', kategoriSira='" + txtGKSira.Text + "',kategoriAdet='" + txtGKAdet.Text + "',kategoriResim='/kategoriResim" + fuGresim.FileName + "' where kategoriID='" + kategoriID + "' ", baglan.baglan());
            cmdkguncelle.ExecuteNonQuery();
            Response.Redirect("kategoriler.aspx");
        }
        else
        {
            SqlCommand cmdguncelle = new SqlCommand("Update Kategori Set kategoriAdi='" + txt_GKAdi.Text + "', kategoriSira='" + txtGKSira.Text + "', kategoriAdet='" + txtGKAdet.Text + "'where kategoriID='" + kategoriID + "'", baglan.baglan());
            cmdguncelle.ExecuteNonQuery();
            Response.Redirect("kategoriler.aspx");
        }
    }
}