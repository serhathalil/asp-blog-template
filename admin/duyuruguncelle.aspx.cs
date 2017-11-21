using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_duyuruguncelle : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string duyurularID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminGirisi.aspx");
        }


        duyurularID = Request.QueryString["duyurularID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmddgetir = new SqlCommand("select * from duyurular where duyurularID='" + duyurularID + "'", baglan.baglan());
            SqlDataReader dr = cmddgetir.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(dr);

            DataRow row = dt.Rows[0];
            txtDuyuruBaslik.Text = row["duyurularBaslik"].ToString();
            txtDuyuruIceril.Text = row["duyurularIcerik"].ToString();
        }
    }
    protected void btn_duyuruGuncelle_Click(object sender, EventArgs e)
    {
        SqlCommand cdmdguncelle = new SqlCommand("Update Duyurular Set duyurularBaslik='" + txtDuyuruBaslik.Text + "', duyurularIcerik='" + txtDuyuruIceril.Text + "'Where duyurularID='" + duyurularID + "'", baglan.baglan());
        cdmdguncelle.ExecuteNonQuery();
        Response.Redirect("duyurular.aspx");
    }
}
