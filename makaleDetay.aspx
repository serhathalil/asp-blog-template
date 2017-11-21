<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="makaleDetay.aspx.cs" Inherits="makaleDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-top: 20px">
                <asp:DataList ID="dl_kategori" runat="server">
                    <ItemTemplate>
                        <div class="card mb-4">
                            <div class="card mb-4">
                                <img class="card-img-top" src="<%# Eval("kategoriResim") %>">
                            </div>
                            <div class="card-body">
                                <h2 class="card-title">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label></h2>
                                <p class="card-text">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleIcerik") %>'></asp:Label>
                                </p>
                                <a href="Default.aspx">
                                    <button type="button" class="btn btn-primary" style="float: right;">Anasayfa</button></a>
                            </div>
                            <div class="card-footer text-muted">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>

    <%--Yorum Yapma--%>
    <div class="container" style="background-color: #fff;">
        <h3 style="text-align: center">Yorum Yap</h3>
        <div class="row" style="padding: 10px">

            <div class="col-md-12" style="margin-top: 20px; background-color: #fff;">


                <form class="form-horizontal" method="post" role="form" onsubmit="return validateForm()">
                    <input type="hidden" id="t4" name="articleID" value="<%# Eval("makaleID") %>" />
                    <div class="form-group">
                        <%-- <label for="name" class="col-sm-2 control-label" style="color: #fff;">Name</label>--%>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="t1" name="name" placeholder="Adınız" required tabindex="1">
                        </div>
                    </div>
                    <div class="form-group">
                        <%-- <label for="email" class="col-sm-2 control-label" style="color: #fff;">E-mail</label>--%>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="t2" name="email" placeholder="E-mail Adresiniz" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--  <label for="name" class="col-sm-2 control-label" style="color: #fff;">Message</label>--%>
                        <div class="col-sm-10">
                            <textarea id="t3" name="message" class="form-control" placeholder="Yorumunuz" rows="5" required></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-6">
                            <button type="submit" style="float: right;" class="btn btn-primary" onclick="ekle()">Gönder</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>





    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-top: 20px; background-color: #fff;">
                <asp:DataList ID="dl_yorumGetir" runat="server">
                    <ItemTemplate>
                        <div style="height: auto; float: left; border-bottom-color: #fff">
                            <div style="float: left; width: 50px; height: 60px;">
                                <asp:Image ID="Image4" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="50px" />
                            </div>
                            <div style="float: left; width: 630px; height: auto">
                                <div style="float: left; width: 630px; height: 25px">
                                    &nbsp;
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("yorumAdSoyad") %>' Font-Size="18px" ForeColor="#333333"></asp:Label>
                                    -
                            <asp:Label ID="Label8" runat="server" Font-Size="12px" ForeColor="#999999" Text='<%# Eval("yorumTarih","{0:dd MMM yyyy }") %>'></asp:Label>
                                </div>
                                <div style="float: left;">
                                    &nbsp;
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="Gray"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div style="float: left;">
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>

</asp:Content>

