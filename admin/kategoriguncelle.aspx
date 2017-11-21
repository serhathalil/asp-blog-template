<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="kategoriguncelle.aspx.cs" Inherits="admin_kategoriguncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1
        {
            width: 100%;
            color: #FFFFFF;
            background-color: #009999;
        }
        .auto-style2
        {
            width: 253px;
        }
        .auto-style3
        {
            width: 253px;
            height: 21px;                               
        }
        .auto-style4
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Kategori Adı:</td>
            <td>
                <asp:TextBox ID="txt_GKAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Sırası:</td>
            <td>
                <asp:TextBox ID="txtGKSira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Adet:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtGKAdet" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim:</td>
            <td>
                <asp:FileUpload ID="fuGresim" runat="server" CssClass="textboxGorsel" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="butonGorsel" Text="Güncelle" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

