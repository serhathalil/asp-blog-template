using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class makaleDetay : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        makaleID = Request.QueryString["makaleID"];
        if (!Page.IsPostBack)
        {
            //makale getir
            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleIcerik, dbo.Makale.makaleID, dbo.Makale.makaleTarih, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResim, dbo.Kategori.kategoriID FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where dbo.Makale.makaleID = '" + makaleID + "'", baglan.baglan());
            SqlDataReader dr = cmdmakale.ExecuteReader();
            dl_kategori.DataSource = dr;
            dl_kategori.DataBind();

            //makale okunma sayısı
            SqlCommand cmdokunma = new SqlCommand("Update Makale Set makaleOkunma=makaleOkunma+1 Where makaleID='" + makaleID + "'", baglan.baglan());
            cmdokunma.ExecuteNonQuery();

            //yorumGetir
            SqlCommand cmdygetir = new SqlCommand("Select * From Yorum Where makaleID='" + makaleID + "' and yorumOnay=1", baglan.baglan());
            SqlDataReader drgetir = cmdygetir.ExecuteReader();
            dl_yorumGetir.DataSource = drgetir;
            dl_yorumGetir.DataBind();

            
        }
    }
}