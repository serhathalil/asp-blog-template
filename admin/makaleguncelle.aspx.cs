using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_makaleguncelle : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminG.aspx");
        }

        makaleID = Request.QueryString["makaleID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmdmgetir = new SqlCommand("Select * From Makale Where makaleID='" + makaleID + "'", baglan.baglan());
            SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

            DataTable dtmgetir = new DataTable("tablo");
            dtmgetir.Load(drmgetir);

            DataRow row = dtmgetir.Rows[0];
            txtmgBaslik.Text = row["makaleBaslik"].ToString();
            txtmgOzet.Text = row["makaleOzet"].ToString();
            txtmgIcerik.Text = row["makaleIcerik"].ToString();
            txtmgYorumSay.Text = row["makaleYorumSayisi"].ToString();
        }
    }
    protected void btnmGuncelle_Click(object sender, EventArgs e)
    {
        if (fu_mgslider.HasFile)
        {
            fu_mgslider.SaveAs(Server.MapPath("/sliderResim" + fu_mgslider.FileName));
            SqlCommand cmdmg = new SqlCommand("Update Makale Set makaleBaslik='" + txtmgBaslik.Text + "', makaleOzet='" + txtmgOzet.Text + "', makaleIcerik='" + txtmgIcerik.Text + "', makaleYorumSayisi='" + txtmgYorumSay.Text + "',makaleResim='/sliderResim" + fu_mgslider.FileName + "'where makaleID='" + makaleID + "'", baglan.baglan());
            cmdmg.ExecuteNonQuery();

            Response.Redirect("makaleler.aspx");
        }
        else
        {
            SqlCommand cmdgncl = new SqlCommand("Update Makale Set makaleBaslik='" + txtmgBaslik.Text + "', makaleOzet='" + txtmgOzet.Text + "', makaleIcerik='" + txtmgIcerik.Text + "', makaleYorumSayisi='" + txtmgYorumSay.Text + "'where makaleID='" + makaleID + "'", baglan.baglan());
            cmdgncl.ExecuteNonQuery();
            Response.Redirect("makaleler.aspx");
        }
    }
}