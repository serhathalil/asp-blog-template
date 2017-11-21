using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_yorumlar : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string yorumID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminGirisi.aspx");
        }

        yorumID = Request.QueryString["yorumID"];
        islem = Request.QueryString["islem"];

        //onaysız yorum sil
        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("Delete From Yorum Where yorumID='" + yorumID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }


        if (Page.IsPostBack == false)
        {
            pnl_YorumGoster.Visible = false;
            pn_yorumOnayli.Visible = false;
            //Onaysız yorumlar
            SqlCommand cmdgetir = new SqlCommand("SELECT dbo.Makale.makaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarih, dbo.Yorum.yorumOnay, dbo.Yorum.yorumResim FROM dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.makaleID = dbo.Yorum.makaleID where yorumOnay=0", baglan.baglan());
            SqlDataReader dr = cmdgetir.ExecuteReader();
            dl_yorum.DataSource = dr;
            dl_yorum.DataBind();

            //onaylı yorumlar
            SqlCommand cmdonayli = new SqlCommand("SELECT dbo.Makale.makaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarih, dbo.Yorum.yorumOnay, dbo.Yorum.yorumResim FROM dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.makaleID = dbo.Yorum.makaleID where yorumOnay=1", baglan.baglan());
            SqlDataReader dronayli = cmdonayli.ExecuteReader();
            dl_onayli.DataSource = dronayli;
            dl_onayli.DataBind();


        }
    }

    protected void btnEksi_Click(object sender, EventArgs e)
    {
        pnl_YorumGoster.Visible = false;
    }

    protected void btnArti_Click(object sender, EventArgs e)
    {
        pnl_YorumGoster.Visible = true;
    }

    protected void btn_onaylananarti_Click(object sender, EventArgs e)
    {
        pn_yorumOnayli.Visible = true;
    }



    protected void btn_onaylananeksi_Click1(object sender, EventArgs e)
    {
        pn_yorumOnayli.Visible = false;
    }
}