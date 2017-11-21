using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_yorumcevap : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string makaleID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKadi"] == null)
        {
            Response.Redirect("adminGirisi.aspx");
        }
    }

    protected void btnYorumCevap_Click(object sender, EventArgs e)
    {
        makaleID = Request.QueryString["makaleID"];
        SqlCommand cmdycevap = new SqlCommand("Insert Into Yorum (yorumAdSoyad,yorumIcerik,yorumResim,makaleID) Values ('" + txtAd.Text + "','" + txtIcerik.Text + "','/tema/admin.png','" + makaleID + "')", baglan.baglan());
        cmdycevap.ExecuteNonQuery();
        Response.Redirect("yorumlar.aspx");
    }
}