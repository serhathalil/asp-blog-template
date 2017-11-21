<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminG.aspx.cs" Inherits="admin_adminG" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../main2.css" rel="stylesheet" />
     <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <title></title>
     <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
            border: 0;
        }
    </style>
</head>
<body style="background-color: #e1e1e1">
    <form id="form1" runat="server">
        <div style="height: 50px; background-color: #2a595c; color: #fff;">
            <div style="float: left; width: 250px; margin-top: 13px; margin-left: 30px;">
                Kullanıcı Adı: 
                <asp:TextBox ID="txtKadi" runat="server" Height="25px" Width="142px"></asp:TextBox>
            </div>
            <div style="float: left; width: 220px; margin-top: 13px">
                Şifre: 
                <asp:TextBox ID="txtSifre" runat="server" Height="25px" Width="142px" TextMode="Password"></asp:TextBox>
            </div>
            <div style="float: left; width: 250px; margin-top: 13px">
                <asp:Button ID="btnGiris" runat="server" Text="Giriş" Height="25px" Width="78px" BackColor="White" ForeColor="#2a595c" OnClick="btnGiris_Click"   />
            </div>
            <div style="float: right; width: 300px; margin-top: 13px;   ">
                <asp:Label ID="lblBilgi" runat="server" Text="Yönetici Paneli" ForeColor="White"></asp:Label></div>
        </div>
    </form>
</body>
</html>




