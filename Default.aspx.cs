using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml;

public partial class _Default : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmdgetir = new SqlCommand("select * from Makale order by makaleID Desc", baglan.baglan());
        SqlDataReader dr = cmdgetir.ExecuteReader();

        dl_getir.DataSource = dr;
        dl_getir.DataBind();

        //kategoriGetir
        SqlCommand cmdKgetir = new SqlCommand("select * from Kategori", baglan.baglan());
        SqlDataReader drKgetir = cmdKgetir.ExecuteReader();

        dl_kategoriGetir.DataSource = drKgetir;
        dl_kategoriGetir.DataBind();

        SqlCommand cmdDropgetir = new SqlCommand("select * from Kategori", baglan.baglan());
        SqlDataReader drDropgetir = cmdDropgetir.ExecuteReader();

        dl_dropKategori.DataSource = drDropgetir;
        dl_dropKategori.DataBind();

        SqlCommand cmdDuyuruGetir = new SqlCommand("select Top 5 * from Duyurular order by duyurularID Desc", baglan.baglan());
        SqlDataReader drDuyuruGetir = cmdDuyuruGetir.ExecuteReader();

        dl_Duyuru.DataSource = drDuyuruGetir;
        dl_Duyuru.DataBind();

        //döviz
        XmlDocument xmlVerisi = new XmlDocument();
        xmlVerisi.Load("http://www.tcmb.gov.tr/kurlar/today.xml");
        decimal dolar = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "USD")).InnerText.Replace('.', ','));
        decimal Euro = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "EUR")).InnerText.Replace('.', ','));
        decimal pound = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "GBP")).InnerText.Replace('.', ','));
        decimal frank = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "CHF")).InnerText.Replace('.', ','));
        Label3.Text = dolar.ToString("N3");
        Label4.Text = Euro.ToString("N3");
        Label9.Text = pound.ToString("N3");
        Label10.Text = frank.ToString("N3");


      
    }
}