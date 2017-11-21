<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hakkimda2.aspx.cs" Inherits="hakkimda2" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Serhat Halil Silsüpür</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
    <%-- <link href="css/normalize.css" rel="stylesheet" />--%>
    <%--  <link href="main.css" rel="stylesheet" />--%>
    <link href="main2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="Default.aspx">SERHAT HALİL SİLSÜPÜR</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
         
                        <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx">BLOG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="hakkimda2.aspx">HAKKIMDA</a>
                        </li>

                         <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Kategoriler</a>
                                <div class="dropdown-menu">
                                    <asp:DataList ID="dl_dropKategoriHakkimda" runat="server">
                                        <ItemTemplate>
                                                 <a class="dropdown-item" href="kategoriDetay.aspx?kategoriID=<%#Eval("kategoriID") %>">
                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("kategoriAdi") %>'></asp:Label>
                                            </a>
                                        
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">EĞİTİM VİDEOLARI</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="iletisim.aspx">İLETİŞİM</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <div class="container">
            <div class="fb-profile">
                <img align="left" class="fb-image-lg" src="img/ankara.jpg" alt="Profile image example" />
                <img align="left" class="fb-image-profile thumbnail" src="img/srht.jpg" alt="Profile image example" />
                <div class="fb-profile-text">
                    <h1>Serhat Halil Silsüpür</h1>
                    <h6>Bilişim Teknolojileri ve Yazılım Öğretmeni</h6>
                </div>
            </div>
        </div>
        <div class="hakkimda">
            <div class="container" style="background-color: #fff;">
                <div class="row" style="margin-top: 30px">
                    <div class="col-12">
                        <p>
                            <strong>&nbsp;&nbsp;&nbsp; Serhat Halil Silsüpür</strong>, 1990 Ankara&#39;da doğdum. Uludağ Üniversitesi bilgisayar ve öğretim teknolojileri öğretmenliği(<strong>Böte</strong>) 2013 mezunuyum. Aynı üniversite-bölümde yüksek lisans öğrencisiyim. Çoğu yüksek lisans öğrencisi gibi ben de akademisyen olma hayalleriyle başladım ama zaman içinde çeşitli faktörlerden dolayı (akademik kadro açılmaması, torpil, referans...) ümitsizliğe kapılıp tez aşamasında takılı kaldım. Bu süreçte Bursa&#39;da bir inşaat firmasında web geliştirici olarak 1.5 yıl çalıştım. İlk yazılım tecrübemi burada kazandım, ardından Ankara&#39;da coğrafi bilgi sistemleri(cbs) üzerine bir şirkette bilgiişlem teknik destek departmanında çalıştım. Daha çok teknik işler yapıyor, cbs ile ilgili programları kuruyor, son kullanıcı sorunlarını çözme üzerine çalışıyordum. Bu işin beni geliştirmediğine ve benim yeteneklerimin altında olduğuna karar verip 6.ayda istifa ettim. İşsizlik dönemimi bir yandan 
                              iş arama, görüşmeler ve yoğun bir şekilde <strong>javascrip</strong>t, jquery, css, <strong>html</strong>, bootstrap, devexpress, masaüstü, web uygulamaları geliştirerek ve bu bloğu oluşturarak geçiriyorum.
                        </p>
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bu web sitesini sadece teknoloji alanında sınırlamayıp spor, kültür-turizm ve finans alanlarında da paylaşımlar yapmaya çalışacağım. Bloğumda borsa teknik çizimlerini ve yükseleceğini düşündüğüm hisseleri yatırım tavsiyesi olmadan sadece eğitim amaçlı paylaşmayı düşünüyorum. Ayrıca tek başıma Avrupayı trenle(<strong>interrail</strong>) gezip oralardaki gözlemlerimi ve maceralarımı bloğumda paylaşmayı düşünüyorum. Paylaşımlar hoşunuza gider ve faydalı bir bilgiye ulaşırsanız anasayfadaki &#39;<strong>Kahve Ismarla</strong>&quot; butonuna tıklayarak minik bir destek sağlayabilirsiniz :) (paypal güvencesiyle çekinmeden kredi kartınızı kullanabilirsiniz. Kart bilgilerinizi kaydetmiyorum ;) )&nbsp; Roma, Viyana, Kopenhag, Berlin, Budapeşte, Oslo... gibi şehirlerde <strong>kahve</strong>mi yudumlarken sizleri de anıyor olacığım. Umarım dünyaya açılma hareketim sonucunda Türkiye&#39;de olmayan bir şeyi keşfeder ve uygulama fırsatı bulabilirim.
            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp; Meraklılar için bu web sitesini<strong> asp.net</strong> web form kullanarak oluşturdum. Verileri tutmak için 6 tane ilişkisel tablo hazırladım. Admin panelinden; kategoriler, makaleler, yorumlar ve duyurular kısmına ekleme, güncelleme, silme işlemleri yaptırılabiliyor. Sayfanın responsive olabilmesi için bootstrap css kütüphanesini kullandım.&nbsp;&nbsp;
            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp; Bana ulaşmak isterseniz iletişim sayfasındaki mesaj formundan yazabilir veya e-posta gönderebilirsiniz. Mailleri sürekli kontrol ediyorum. Mümkün oldukça kısa sürede dönmeye çalışırım.<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </p>
                        <br />
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-youtube fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <p class="copyright text-muted" style="color: #fff !important;">&copy; SERHAT HALİL SİLSÜPÜR 2017</p>
                    </div>
                </div>
            </div>
        </footer>

    </form>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>
</body>
</html>
