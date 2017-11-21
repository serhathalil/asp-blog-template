<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="makaleguncelle.aspx.cs" Inherits="admin_makaleguncelle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1
        {
            width: 100%;
            color: #FFFFFF;
            background-color: #009999;
        }
        .auto-style3
        {
            width: 144px;
            height: 21px;
        }
        .auto-style4
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1" >
        <tr>
            <td class="auto-style3" style="text-align: right"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Başlık:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtmgBaslik" runat="server" CssClass="textboxGorsel" Width="475px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Özet:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtmgOzet" runat="server" CssClass="textboxGorsel" Width="475px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">İçerik:</td>
            <td class="auto-style4"><CKEditor:CKEditorControl Width="475px" ID="txtmgIcerik" BasePath="/ckeditor" runat="Server"></CKEditor:CKEditorControl></td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Slider:</td>
            <td class="auto-style4">
                <asp:FileUpload ID="fu_mgslider" runat="server" CssClass="textboxGorsel" Width="475px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Yorum Sayısı:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtmgYorumSay" runat="server" CssClass="textboxGorsel" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnmGuncelle" runat="server" CssClass="butonGorsel" OnClick="btnmGuncelle_Click" Text="Güncelle" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

