using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

        //kategoriGetir
        SqlCommand cmdKgetir = new SqlCommand("select * from Kategori", baglan.baglan());
        SqlDataReader drKgetir = cmdKgetir.ExecuteReader();

        dl_kategoriGetir.DataSource = drKgetir;
        dl_kategoriGetir.DataBind();

        //menü kategori
        SqlCommand cmdDropgetir = new SqlCommand("select * from Kategori", baglan.baglan());
        SqlDataReader drDropgetir = cmdDropgetir.ExecuteReader();

        dl_dropKategoriMaster.DataSource = drDropgetir;
        dl_dropKategoriMaster.DataBind();

      
    }
}
