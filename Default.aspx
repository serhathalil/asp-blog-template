<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta property="og:url" content="http://www.silsupur.org" />
    <meta property="og:type" content="html" />
    <meta property="og:title" content="Serhat Halil Silsüpür" />
    <meta property="og:description" content="Bu makalede MsSql veritabanımızı internet barındırma hizmetlerinden (natro, ihs, isimtescil, goddady...) edindiğimiz alana nasıl yükleyeceğimizi adım adım ve resimlerle anlatacağım." />
    <meta property="og:image" content="http://www.silsupur.org/sliderResim/" />


    <title>Serhat Halil Silsüpür</title>


    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
    <%--  <link href="main.css" rel="stylesheet" />--%>
    <link href="main2.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            background-color: #808080;
        }

        .auto-style3 {
            color: #000000;
            background-color: #FFFFFF;
        }

        .auto-style5 {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Navigation -->
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
                                <a class="nav-link" href="#blog">BLOG</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="hakkimda2.aspx">HAKKIMDA</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Kategoriler</a>
                                <div class="dropdown-menu">
                                    <asp:DataList ID="dl_dropKategori" runat="server">
                                        <ItemTemplate>
                                            <a class="dropdown-item" href="kategoriDetay.aspx?kategoriID=<%#Eval("kategoriID") %>">
                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("kategoriAdi") %>'></asp:Label>
                                            </a>

                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="egitim.aspx">EĞİTİM VİDEOLARI</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="iletisim.aspx">İLETİŞİM</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Page Header -->
            <header class="masthead" style="background-image: url('img/bg.png'); height: 700px;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-10 mx-auto">
                            <div class="site-heading">
                                <h3></h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <section id="blog">
            <div class="container">
                <div class="row">

                    <!-- Blog Entries Column -->
                    <div class="col-md-8 ">

                        <!-- Blog Post -->
                        <asp:DataList ID="dl_getir" runat="server">
                            <ItemTemplate>
                                <div class="card mb-4">
                                    <div class="card mb-4">
                                        <img class="card-img-top" src="<%# Eval("makaleResim") %>">
                                    </div>
                                    <div class="card-body">
                                        <h2 class="card-title">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label></h2>
                                        <p class="card-text">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOzet") %>'></asp:Label>
                                        </p>
                                        <a href="makaledetay.aspx?makaleID=<%#Eval("makaleID")%>">
                                            <button type="button" class="btn btn-primary" style="float: right;">Devamını Oku</button></a>
                                    </div>
                                    <div class="card-footer text-muted">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                   <%-- <asp:Label ID="Label5" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label>--%>
                                        <div style="float: right; margin-top: auto; margin-bottom: auto;">
                                            <div class="fb-share-button" data-href="http://www.silsupur.org" data-layout="button" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Paylaş</a></div>
                                            <div class="g-plus" data-action="share" data-height="24"></div>
                                            <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.silsupur.org" data-via="serhatsilsupur">Tweet</a>
                                            <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'twitter-wjs');</script>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                    <!-- Sidebar Widgets Column -->
                    <div class="col-md-4">
                        <div class="card hovercard" style="background-color: #FFFFFF">
                            <div class="cardheader">
                            </div>
                            <div class="avatar">
                                <img alt="" src="../tema/serhat.jpg">
                            </div>
                            <div class="info">
                                <div class="title">
                                    <a class="auto-style5"><span class="bg-white">S</span></a><span class="auto-style1"><a class="auto-style5"><span class="bg-white">erhat Halil Silsüpür</span></a></span><span class="auto-style3"> </span>
                                </div>
                                <div class="desc" style="color: #000000; background-color: #FFFFFF; width: auto;">Bilişim Tek.ve Yazılım Öğretmeni</div>
                                <div style="font-family: Sylfaen; font-size: 14px; text-align: center; vertical-align: bottom; line-height: 20px; margin-top: 20px" class="auto-style5">
                                    <span class="bg-white">Önemli şeyler bir anda yapılamaz;
ufak şeylerin bir araya getirilmesiyle oluşur.
                                    </span>
                                    <br class="bg-white" />
                                    <strong><span class="bg-white">Vincent Van Gogh </span></strong>
                                </div>
                            </div>
                            <div class="bottom">
                                <a class="btn btn-warning btn-twitter btn-sm" href="https://twitter.com/serhatsilsupur">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a class="btn btn-info btn-sm" rel="publisher"
                                    href="https://www.linkedin.com/in/serhat-halil-silsüpür">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                                <a class="btn btn-danger btn-sm" rel="publisher"
                                    href="plus.google.com/+serhathalilsilsüpür">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                                <a class="btn btn-primary btn-sm" rel="publisher"
                                    href="https://www.facebook.com/serhathalil.silsupur">
                                    <i class="fa fa-facebook"></i>
                                </a>

                            </div>
                        </div>



                        <!-- Search Widget -->

                        <div class="card my-4">
                            <h5 class="card-header">Kahve</h5>
                            <div class="card-body">
                                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
                                    <input type="hidden" name="cmd" value="_donations">
                                    <input type="hidden" name="business" value="serhatsilsupur@gmail.com">
                                    <input type="hidden" name="lc" value="GB">
                                    <input type="hidden" name="currency_code" value="TRY">
                                    <input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_SM.gif:NonHostedGuest" />
                                    <input type="image" src="img/KahveIsmarla.png" name="submit" alt="PayPal – The safer, easier way to pay online!" />
                                    <img alt="" border="0" src="https://www.paypalobjects.com/tr_TR/i/scr/pixel.gif" width="1" height="1" />
                                </form>
                            </div>
                        </div>


                        <div class="card my-4">
                            <h5 class="card-header">Ara</h5>
                            <div class="card-body">
                                <div class="input-group">
                                    <input type="text" id="ara" class="form-control" placeholder="Search for..." />
                                    <span class="input-group-btn">
                                        <button class="btn btn-secondary" type="button">Go!</button>
                                    </span>
                                </div>
                            </div>
                        </div>

                        <!-- Categories Widget -->
                        <div class="card my-4">
                            <h5 class="card-header">Kategoriler</h5>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">

                                        <asp:DataList ID="dl_kategoriGetir" runat="server" Width="195px">
                                            <ItemTemplate>
                                                <ul class="list-unstyled mb-0">
                                                    <table class="w-100">
                                                        <tr>
                                                            <td>
                                                                <a href="kategoriDetay.aspx?kategoriID=<%#Eval("kategoriID") %>">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("kategoriAdi") %>'></asp:Label></a>
                                                                &nbsp;(<asp:Label ID="Label7" runat="server" Text='<%# Eval("kategoriAdet") %>'></asp:Label>
                                                                )</td>
                                                        </tr>
                                                    </table>
                                                </ul>
                                            </ItemTemplate>
                                        </asp:DataList>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--duyurular--%>
                        <div class="card my-4">
                            <h5 class="card-header">Duyurular</h5>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">

                                        <asp:DataList ID="dl_Duyuru" runat="server" Width="291px">
                                            <ItemTemplate>
                                                <ul class="list-unstyled mb-0">
                                                    <table class="w-100">
                                                        <tr>
                                                            <td>
                                                                <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("duyurularResim") %>' Width="50px" />
                                                            </td>
                                                            <td style="width: 530px; text-align: left">
                                                                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text='<%# Eval("duyurularBaslik") %>' Style="font-weight: 700"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:Label ID="Label2" runat="server" ForeColor="#333333" Text='<%# Eval("duyurularIcerik") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" style="font-size: small; text-align: right; border-bottom-style: dotted; border-bottom-width: 1px; border-bottom-color: #0066FF;">
                                                                <asp:Label ID="Label3" runat="server" ForeColor="#999999" Text='<%# Eval("duyurularTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ul>
                                            </ItemTemplate>
                                        </asp:DataList>

                                    </div>
                                </div>
                            </div>
                        </div>


                        <%--döviz kurları--%>
                        <div class="card my-4">
                            <h5 class="card-header">Güncel Döviz</h5>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <ul class="list-unstyled mb-2">
                                            <table class="w-100" style="margin-left: 30px; text-align: center">
                                                <tr>
                                                    <td align="center">Dolar<br />
                                                        <i class="fa fa-usd" aria-hidden="true"></i>
                                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                        &nbsp;<i class="fa fa-try" aria-hidden="true"></i>
                                                    </td>
                                                    <td align="center">Euro<br />
                                                        <i class="fa fa-eur" aria-hidden="true"></i>
                                                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                                        &nbsp;<i class="fa fa-try" aria-hidden="true"></i>
                                                    </td>
                                                    <td align="center">Sterlin<br />
                                                        <i class="fa fa-gbp" aria-hidden="true"></i>
                                                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                                                        &nbsp;<i class="fa fa-try" aria-hidden="true"></i>
                                                    <td align="center">Frank<br />
                                                        fr
                                                        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                                                        &nbsp;<i class="fa fa-try" aria-hidden="true"></i>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ul>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="https://twitter.com/serhatsilsupur" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://www.facebook.com/serhathalil.silsupur" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://github.com/serhathalil" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="https://www.youtube.com/channel/UCJ0VBgkkYXc90l_N4VR8zHA" target="_blank">
                                    <span class="fa-stack fa-lg">
                                        <i class="fa fa-circle fa-stack-2x"></i>
                                        <i class="fa fa-youtube fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <p class="copyright text-muted">&copy; SERHAT HALİL SİLSÜPÜR 2017</p>
                    </div>
                </div>
            </div>
        </footer>
    </form>
    <!-- Bootstrap core JavaScript -->
    <!-- twitter share -->
    <script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'tr'}
    </script>
    <!--*************-->
    <%--facebook share--%>
    <div id="fb-root"></div>
    <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/tr_TR/sdk.js#xfbml=1&version=v2.10&appId=1973690122902801";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    <%--****************--%>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>
</body>
</html>
