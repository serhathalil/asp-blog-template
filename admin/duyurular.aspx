<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="duyurular.aspx.cs" Inherits="admin_duyurular" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 143px;
        }

        .auto-style5 {
            width: 492px;
        }

        .auto-style7 {
            width: 32px;
            height: 32px;
        }

        .auto-style8 {
            width: 440px;
        }

        .auto-style11 {
            width: 141px;
        }

        .auto-style12 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDuyuruArti" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btnDuyuruArti_Click1" />
            &nbsp;
        <asp:Button ID="btnDuyuruEksi" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btnDuyuruEksi_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duyuru Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_DuyuruEkle" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="txtdeBaslik" runat="server" CssClass="textboxGorsel" Height="25px" Width="420px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">İçerik:</td>
                    <td>
                        <CKEditor:CKEditorControl ID="txtdeIcerik" BasePath="/ckeditor" runat="Server" Width="420px"></CKEditor:CKEditorControl>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_duyuruekle" runat="server" Text="Ekle" CssClass="butonGorsel" Width="132px" OnClick="btn_duyuruekle_Click1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px"></div>
        <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDDgoster" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btnDDgoster_Click1" />
            &nbsp;
        <asp:Button ID="btnDDgizle" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btnDDgizle_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duyuru Düzenleme Paneli
        </div>
        <asp:Panel ID="pnlDuyuruDuzenleme" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
            <asp:DataList ID="dl_duyuruGetir" runat="server" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style1" style="text-align: right">
                        <tr>
                            <td class="auto-style8" style="text-align: center">Duyuru</td>
                            <td class="auto-style11" style="text-align: center">Güncelle</td>
                            <td style="text-align: center">Sil</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurularBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style12">
                                <a href="duyuruguncelle.aspx?duyurularID=<%#Eval("duyurularID")%>">
                                    <img alt="" class="auto-style7" src="../tema/refresh%20(1).png" /></a>
                            </td>
                            <td>
                                <a href="duyurular.aspx?duyurularID=<%#Eval("duyurularID")%>&islem=sil">
                                    <img alt="" class="auto-style7" src="../tema/post-delete.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>

