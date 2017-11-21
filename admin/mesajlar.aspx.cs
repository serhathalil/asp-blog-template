using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_mesajlar : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string iletisimID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminGirisi.aspx");
        }


        iletisimID = Request.QueryString["iletisimID"];
        islem = Request.QueryString["islem"];
        //sil
        if (islem == "sil")
        {
            SqlCommand cmdmsjsil = new SqlCommand("delete from Iletisim where iletisimID='" + iletisimID + "'", baglan.baglan());
            cmdmsjsil.ExecuteNonQuery();
            Response.Redirect("mesajlar.aspx");
        }

        //mesaj getir
        SqlCommand cmdmgetir = new SqlCommand("Select * From Iletisim", baglan.baglan());
        SqlDataReader dr = cmdmgetir.ExecuteReader();

        dl_mesaj.DataSource = dr;
        dl_mesaj.DataBind();

        if (!Page.IsPostBack)
        {
            pnl_mesajGoster.Visible = false;
        }
    }


    protected void btn_mArti_Click(object sender, EventArgs e)
    {
        pnl_mesajGoster.Visible = true;
    }

    protected void btn_mEksi_Click(object sender, EventArgs e)
    {
        pnl_mesajGoster.Visible = false;
    }
}