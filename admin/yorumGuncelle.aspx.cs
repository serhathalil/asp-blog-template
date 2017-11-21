using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_yorumGuncelle : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string yorumID = "";
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminGirisi.aspx");
        }

        yorumID = Request.QueryString["yorumID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmdygetir = new SqlCommand("Select * From Yorum Where yorumID='" + yorumID + "'", baglan.baglan());
            SqlDataReader dr = cmdygetir.ExecuteReader();

            DataTable dtygetir = new DataTable("tablo");
            dtygetir.Load(dr);

            DataRow row = dtygetir.Rows[0];
            txtAdSoyad.Text = row["yorumAdSoyad"].ToString();
            txtYorum.Text = row["yorumIcerik"].ToString();
        }
    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        makaleID = Request.QueryString["makaleID"];
        SqlCommand cmdonay = new SqlCommand("Update Yorum Set yorumAdSoyad='" + txtAdSoyad.Text + "', yorumIcerik='" + txtYorum.Text + "',yorumOnay='" + cboxOnay.Checked + "' Where yorumID='" + yorumID + "'", baglan.baglan());
        cmdonay.ExecuteNonQuery();


        //Yorum sayısını arttırma
        if (cboxOnay.Checked == true)
        {
            SqlCommand cmdYsayisi = new SqlCommand("Update Makale Set makaleYorumSayisi=makaleYorumSayisi+1 Where makaleID='" + makaleID + "'", baglan.baglan());
            cmdYsayisi.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }
        if (cboxOnay.Checked == false)
        {
            SqlCommand cmdazalt = new SqlCommand("Update Makale Set makaleYorumSayisi=makaleYorumSayisi-1 Where makaleID='" + makaleID + "'", baglan.baglan());
            cmdazalt.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }
    }
}