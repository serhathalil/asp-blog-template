using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_adminG : System.Web.UI.Page
{
    sqlBaglantisi baglan = new sqlBaglantisi();

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btnAdminGiris_Click(object sender, EventArgs e)
    {
        //string kadi = userName.Value;
        //string sifre = userPassword.Value;

        //SqlCommand cmd = new SqlCommand("select * from Yonetici where yoneticiKadi='" + kadi.ToString()+ "' and yoneticiSifre='" + sifre.ToString() + "'", baglan.baglan());
        //SqlDataReader dr = cmd.ExecuteReader();



        //if (dr.Read())
        //{
        //    Session["yoneticiKadi"] = dr["yoneticiKadi"];
        //    Response.Redirect("duyurular.aspx");
        //}




    }

    protected void btnGiris_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from Yonetici where yoneticiKadi='" + txtKadi.Text + "' and yoneticiSifre='" + txtSifre.Text + "'", baglan.baglan());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["yoneticiKadi"] = dr["yoneticiKadi"];
            Response.Redirect("duyurular.aspx");
        }


        else
        {
            lblBilgi.Text = "Hatalı Giriş!";
            txtKadi.Text = "";
            txtSifre.Text = "";
        }
    }
}