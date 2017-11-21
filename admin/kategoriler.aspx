<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="kategoriler.aspx.cs" Inherits="admin_kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }

        .auto-style2
        {
            width: 242px;
        }

        .auto-style3
        {
            width: 32px;
            height: 32px;
        }

        .auto-style4
        {
            width: 386px;
        }

        .auto-style5
        {
            width: 409px;
        }

        .auto-style6
        {
            width: 99px;
        }

        .auto-style7
        {
            width: 69px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
        <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnArti" runat="server" Height="25px" OnClick="btnArti_Click" Text="+" Width="25px" BorderColor="White" />
            &nbsp;
        <asp:Button ID="btnEksi" runat="server" Height="25px" OnClick="btnEksi_Click" Text="-" Width="25px" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kategori Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_kategoriEkle" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori Adı:</td>
                    <td>
                        <asp:TextBox ID="txtKategoriAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Sıra:</td>
                    <td>
                        <asp:TextBox ID="txtSira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Resim:</td>
                    <td>
                        <asp:FileUpload ID="uploadResim" runat="server" CssClass="textboxGorsel" Width="231px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnKategoriEkle" runat="server" CssClass="butonGorsel" Text="EKLE" OnClick="btnKategoriEkle_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

        <div style="height: 30px"></div>
        <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_kdArti" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btn_kdArti_Click" />
            &nbsp;
        <asp:Button ID="btn_kdEksi" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btn_kdEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kategori Düzenleme Paneli
        </div>
        <asp:Panel ID="pnl_kategoriDuzenle" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <asp:DataList ID="dl_KategoriGetir" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">KATEGORİ ADI</td>
                            <td class="auto-style6">GÜNCELLE</td>
                            <td>SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAdi") %>'></asp:Literal>
                            </td>
                            <td class="auto-style7">
                                <a href="kategoriguncelle.aspx?kategoriID=<%#Eval("kategoriID")%>">
                                    <img alt="" class="auto-style3" src="../tema/refresh%20(1).png" /></a>
                            </td>
                            <td>
                                <a href="kategoriler.aspx?kategoriID=<%#Eval("kategoriID")%>&islem=sill">
                                    <img alt="" class="auto-style3" src="../tema/post-delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <div style="height: 30px"></div>
    </div>
</asp:Content>

