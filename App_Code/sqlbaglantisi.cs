using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for baglanti
/// </summary>
public class sqlBaglantisi
{

    public SqlConnection baglan()
    {
        SqlConnection con = new SqlConnection("Data Source=SERHATHALIL;Initial Catalog=blogSitemDB;Integrated Security=True");
        con.Open();
        SqlConnection.ClearPool(con);
        SqlConnection.ClearAllPools();
        return (con);

    }
}
