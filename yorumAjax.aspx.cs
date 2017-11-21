using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class yorumAjax : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string adsoyad, email, yorum,makaleID;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        makaleID = Request.QueryString["makaleID"];
        adsoyad = Request.QueryString["adsyd"].ToString();
        email = Request.QueryString["em"].ToString();
        yorum = Request.QueryString["yrm"].ToString();
        
        SqlCommand cmd = new SqlCommand("insert into Yorum (yorumAdSoyad, yorumEmail, yorumIcerik, yorumResim, makaleID) values('" + adsoyad.ToString() + "','" + email.ToString() + "','" + yorum.ToString() + "','/tema/yorumm.png'),'"+makaleID+"'", baglan.baglan());
        cmd.ExecuteNonQuery();
    }
}