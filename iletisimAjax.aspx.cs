using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class iletisimAjax : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    string ad, mail, mesaj;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.QueryString["adsyd"].ToString();
        mail = Request.QueryString["em"].ToString();
        mesaj = Request.QueryString["msj"].ToString();

        SqlCommand cmd = new SqlCommand("insert into Iletisim (iletisimAdSoyad, iletisimEmail, iletisimIcerik) values('"+ad.ToString()+"','"+mail.ToString()+"','"+mesaj.ToString()+"')",baglan.baglan());
        cmd.ExecuteNonQuery();

    }
}