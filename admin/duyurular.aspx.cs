using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_duyurular : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string duyurularID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminG.aspx");
        }
        //silme
        duyurularID = Request.QueryString["duyurularID"];
        islem = Request.QueryString["islem"];
        if (islem == "sil")
        {
            SqlCommand cmdduyurusil = new SqlCommand("Delete From Duyurular Where duyurularID='" + duyurularID + "'", baglan.baglan());
            cmdduyurusil.ExecuteNonQuery();
        }

        if (!Page.IsPostBack)
        {
            pnl_DuyuruEkle.Visible = false;
            pnlDuyuruDuzenleme.Visible = false;

            SqlCommand cmddgetir = new SqlCommand("Select * From Duyurular", baglan.baglan());
            SqlDataReader dr = cmddgetir.ExecuteReader();

            dl_duyuruGetir.DataSource = dr;
            dl_duyuruGetir.DataBind();

        }

    }
    protected void btnDuyuruArti_Click1(object sender, EventArgs e)
    {
        pnl_DuyuruEkle.Visible = true;
    }
    protected void btnDuyuruEksi_Click1(object sender, EventArgs e)
    {
        pnl_DuyuruEkle.Visible = false;
    }
    protected void btn_duyuruekle_Click1(object sender, EventArgs e)
    {
        SqlCommand cmdDekle = new SqlCommand("Insert Into Duyurular (duyurularBaslik, duyurularIcerik, duyurularResim) Values ('" + txtdeBaslik.Text + "','" + txtdeIcerik.Text + "','/tema/duyuru.png')", baglan.baglan());
        cmdDekle.ExecuteNonQuery();
        Response.Redirect("duyurular.aspx");
    }
    protected void btnDDgizle_Click1(object sender, EventArgs e)
    {
        pnlDuyuruDuzenleme.Visible = false;
    }
    protected void btnDDgoster_Click1(object sender, EventArgs e)
    {
        pnlDuyuruDuzenleme.Visible = true;
    }










}
