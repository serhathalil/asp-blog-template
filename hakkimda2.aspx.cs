using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class hakkimda2 : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmdDropgetir = new SqlCommand("select * from Kategori", baglan.baglan());
        SqlDataReader drDropgetir = cmdDropgetir.ExecuteReader();

        dl_dropKategoriHakkimda.DataSource = drDropgetir;
        dl_dropKategoriHakkimda.DataBind();
    }
}