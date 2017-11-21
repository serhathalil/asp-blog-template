<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container" style="background-color: #f7f7f7; margin-top: 25px; padding: 14px">
        <div class="row">
            <div class="col-md-12">
                <div class="page-header">
                </div>
                <form class="form-horizontal"  method="post" role="form" onsubmit="return validateForm()">
                    <div class="form-group">
                        <%-- <label for="email" class="col-sm-2 control-label" style="color: #fff;">E-mail</label>--%>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="mail" name="email" placeholder="E-mail Adresiniz" required autofocus>
                        </div>
                    </div>

                    <div class="form-group">
                        <%-- <label for="name" class="col-sm-2 control-label" style="color: #fff;">Name</label>--%>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="ad" name="name" placeholder="Adınız" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <%--  <label for="name" class="col-sm-2 control-label" style="color: #fff;">Message</label>--%>
                        <div class="col-sm-10">
                            <textarea id="mesaj" name="message" class="form-control" placeholder="Mesajınız" rows="5" required></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-6">
                             <button type="submit" class="btn btn-primary"  onclick="insert()">Gönder</button>
                             
                              
                             
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>


</asp:Content>





<%-- <div class="container">
        <div class="row">
            <div class="col-md-12">

                <form>
                    <div id="contact-form" class="form-container" data-form-container>
                        <div class="row">
                            <div class="form-title">
                                <span>İletişim</span>
                            </div>
                        </div>
                        <div class="input-container">
                            <div class="row">
                                <span class="req-input">
                                    <span class="input-status" data-toggle="tooltip" data-placement="top" title="Lütfen Tam Adınızı Yazınız!"></span>
                                    <input type="text" id="ad" data-min-length="8" placeholder="Ad Soyad">
                                </span>
                            </div>
                            <div class="row">
                                <span class="req-input">
                                    <span class="input-status" data-toggle="tooltip" data-placement="top" title="Hatalı E-mail Adresi!"></span>
                                    <input type="email" id="mail" placeholder="Email">
                                </span>
                            </div>

                            <div class="row">
                                <span class="req-input message-box">
                                    <span class="input-status" data-toggle="tooltip" data-placement="top" title="Mesajınızı Yazınız!"></span>
                                    <textarea type="textarea" id="mesaj" data-min-length="10" placeholder="Mesaj"></textarea>
                            </div>
                            <div class="row submit-row">
                                <button type="button" id="btnIletisim" value="insert" onclick="insert()" class="btn btn-block submit-form">Gönder</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>--%>
