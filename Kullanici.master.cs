using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Kullanici : System.Web.UI.MasterPage
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

        //kategoriGetir
        SqlCommand cmdKgetir = new SqlCommand("select * from Kategori", baglan.baglan());
        SqlDataReader drKgetir = cmdKgetir.ExecuteReader();

        dl_kategoriGetir.DataSource = drKgetir;
        dl_kategoriGetir.DataBind();
    }
}
