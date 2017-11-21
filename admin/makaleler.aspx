<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="makaleler.aspx.cs" Inherits="admin_makaleler" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET"  TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 473px;
        }

        .auto-style5 {
            width: 120px;
        }

        .auto-style6 {
            width: 137px;
        }

        .auto-style7 {
            width: 32px;
            height: 32px;
        }

        .auto-style10 {
            width: 465px;
        }

        .auto-style11 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="color: #fff; background-color: #2a595a; font-weight: bolder;" class="auto-style11">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_meArti" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btn_meArti_Click" />
            &nbsp;
        <asp:Button ID="btn_meEksi" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btn_meEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Makale Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleEkle" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" style="text-align: right">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">Kategori:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGorsel">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">Başlık</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxGorsel" Width="475px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">Özet</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_makaleOzet" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="475px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">İçerik</td>
                    <td class="auto-style3">
                        <ckeditor:ckeditorcontrol width="475px" id="txt_makaleIcerik"  basepath="/ckeditor" runat="Server"></ckeditor:ckeditorcontrol>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">Slider</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="fu_slider" runat="server" CssClass="textboxGorsel" Width="475px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btn_makaleEkle" runat="server" CssClass="butonGorsel" Text="Ekle" OnClick="btn_makaleEkle_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px"></div>
        <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_mdarti" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btn_mdarti_Click" />
            &nbsp;
        <asp:Button ID="btn_mdeksi" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btn_mdeksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Makale Güncelleme Paneli
        </div>



        <asp:Panel ID="pnl_makaleduzenle" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <asp:DataList ID="dl_makaleGetir" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>MAKALE ADI</td>
                            <td class="auto-style6">DÜZENLE</td>
                            <td>SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td>
                                <a href="makaleguncelle.aspx?makaleID=<%#Eval("makaleID") %>">
                                    <img alt="" class="auto-style7" src="../tema/refresh%20(1).png" /></a>
                            </td>
                            <td>
                                <a href="makaleler.aspx?makaleID=<%#Eval("makaleID")%>&islem=sil">
                                    <img alt="" class="auto-style7" src="../tema/post-delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

        <div style="height: 30px"></div>
        <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDarti" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btnDarti_Click" />
            &nbsp;
        <asp:Button ID="btnDeksi" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btnDeksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Makale Dosya Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleDosya" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right">Dosya Seç: </td>
                    <td>
                        <asp:FileUpload ID="fu_dosya" runat="server" CssClass="textboxGorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_mdosyaekle" runat="server" CssClass="butonGorsel" OnClick="btn_mdosyaekle_Click" Text="Ekle" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right">NOT:</td>
                    <td>&nbsp; Ekleme işlemi dosyalar/eklenendosya.uzantı şeklinde kullanılacak.</td>
                </tr>
            </table>
        </asp:Panel>


    </div>
</asp:Content>

