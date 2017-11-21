using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_kategoriler : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string kategoriID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminG.aspx");
        }

        //silme işlemi------------
        kategoriID = Request.QueryString["kategoriID"];
        islem = Request.QueryString["islem"];
        if (islem == "sill")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Kategori where kategoriID='" + kategoriID + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        //----------------------

        if (Page.IsPostBack == false)
        {
            pnl_kategoriEkle.Visible = false;
            pnl_kategoriDuzenle.Visible = false;
        }
        //kategorileri dataliste çekmek;

        SqlCommand cmdkgetir = new SqlCommand("select * from kategori", baglan.baglan());
        SqlDataReader drkgetir = cmdkgetir.ExecuteReader();
        dl_KategoriGetir.DataSource = drkgetir;
        dl_KategoriGetir.DataBind();
    }
    protected void btnArti_Click(object sender, EventArgs e)
    {
        pnl_kategoriEkle.Visible = true;
    }
    protected void btnEksi_Click(object sender, EventArgs e)
    {
        pnl_kategoriEkle.Visible = false;
    }
    protected void btnKategoriEkle_Click(object sender, EventArgs e)
    {
        if (uploadResim.HasFile)
        {
            uploadResim.SaveAs(Server.MapPath("/kategoriResim/" + uploadResim.FileName));
            SqlCommand cmdKategoriEkle = new SqlCommand("insert into Kategori (kategoriAdi,kategoriSira,kategoriResim) values('" + txtKategoriAdi.Text + "','" + txtSira.Text + "','/kategoriResim/" + uploadResim.FileName + "')", baglan.baglan());
            cmdKategoriEkle.ExecuteNonQuery();
            Response.Redirect("kategoriler.aspx");
        }
        else
        {
            btnKategoriEkle.Text = "Resim Ekle!";
        }
    }
    protected void btn_kdArti_Click(object sender, EventArgs e)
    {
        pnl_kategoriDuzenle.Visible = true;
    }
    protected void btn_kdEksi_Click(object sender, EventArgs e)
    {
        pnl_kategoriDuzenle.Visible = false;
    }
}
