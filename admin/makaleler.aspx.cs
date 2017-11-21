using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;    

public partial class admin_makaleler : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string makaleID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminG.aspx");
        }
        //makale sil-------------
        makaleID = Request.QueryString["makaleID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdmsil = new SqlCommand("Delete from Makale Where makaleID='" + makaleID + "'", baglan.baglan());
            cmdmsil.ExecuteNonQuery();
        }
        //------------------


        if (Page.IsPostBack == false)
        {
            pnl_makaleEkle.Visible = false;
            pnl_makaleduzenle.Visible = false;
            pnl_makaleDosya.Visible = false;
            //kategorileri getir
            SqlCommand cmdkgetir = new SqlCommand("Select * From Kategori", baglan.baglan());
            SqlDataReader dr = cmdkgetir.ExecuteReader();

            ddl_kategori.DataTextField = "kategoriAdi";
            ddl_kategori.DataValueField = "kategoriID";

            ddl_kategori.DataSource = dr;
            ddl_kategori.DataBind();

            //makale getir
            SqlCommand cmdmgetir = new SqlCommand("select * from Makale", baglan.baglan());
            SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

            dl_makaleGetir.DataSource = drmgetir;
            dl_makaleGetir.DataBind();
        }
    }
    protected void btn_meEksi_Click(object sender, EventArgs e)
    {
        pnl_makaleEkle.Visible = false;
    }

    protected void btn_meArti_Click(object sender, EventArgs e)
    {
        pnl_makaleEkle.Visible = true;
    }
    protected void btn_makaleEkle_Click(object sender, EventArgs e)
    {
        if (fu_slider.HasFile)
        {
            fu_slider.SaveAs(Server.MapPath("/sliderResim/" + fu_slider.FileName));
            SqlCommand cmdmekle = new SqlCommand("insert into Makale(makaleBaslik,makaleOzet,makaleIcerik, makaleResim,kategoriID) values ('" + txt_makaleBaslik.Text + "','" + txt_makaleOzet.Text + "','" + txt_makaleIcerik.Text + "','/sliderResim/" + fu_slider.FileName + "','" + ddl_kategori.SelectedValue + "')", baglan.baglan());
            cmdmekle.ExecuteNonQuery();

            //--Makale Adeti
            SqlCommand cmdAdet = new SqlCommand("Update Kategori Set kategoriAdet=kategoriAdet+1 where kategoriID='" + ddl_kategori.SelectedValue + "'", baglan.baglan());
            cmdAdet.ExecuteNonQuery();


            Response.Redirect("makaleler.aspx");
        }
        else
        {
            btn_makaleEkle.Text = "Resim Ekleyiniz!";
        }
    }
    protected void btn_mdarti_Click(object sender, EventArgs e)
    {
        pnl_makaleduzenle.Visible = true;
    }
    protected void btn_mdeksi_Click(object sender, EventArgs e)
    {
        pnl_makaleduzenle.Visible = false;
    }
    protected void btnDarti_Click(object sender, EventArgs e)
    {
        pnl_makaleDosya.Visible = true;
    }
    protected void btnDeksi_Click(object sender, EventArgs e)
    {
        pnl_makaleDosya.Visible = false;
    }
    protected void btn_mdosyaekle_Click(object sender, EventArgs e)
    {
        if (fu_dosya.HasFile)
        {
            fu_dosya.SaveAs(Server.MapPath("/dosyalar/" + fu_dosya.FileName));
            Response.Redirect("makaleler.aspx");
        }
        else
        {
            btn_mdosyaekle.Text = "dosya ekleyiniz";
        }
    }
}