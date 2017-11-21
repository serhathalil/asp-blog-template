<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="mesajlar.aspx.cs" Inherits="admin_mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            width: 33px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <div>
            <div style="color: #fff; background-color: #2a595a; font-weight: bolder;" class="auto-style11">
                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_mArti" runat="server" Height="25px" Text="+" Width="25px" BorderColor="White" OnClick="btn_mArti_Click" />
                &nbsp;
        <asp:Button ID="btn_mEksi" runat="server" Height="25px" Text="-" Width="25px" BorderColor="White" OnClick="btn_mEksi_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesaj Yönetim Paneli
            </div>
            <asp:Panel ID="pnl_mesajGoster" runat="server" BackColor="#009999" BorderColor="#99CCFF" ForeColor="White">
                <div>
                    <asp:DataList ID="dl_mesaj" runat="server" CssClass="auto-style1" Width="700px">
                        <ItemTemplate>
                          
                            <div style="width: 100%; height: auto; ">
                                
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style2" style="width: 200px">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("iletisimAdSoyad") %>' Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                                        </td>
                                        <td class="auto-style2" style="width: 200px">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("iletisimEmail") %>' Font-Overline="False" Font-Size="12px" ForeColor="#666666"></asp:Label>
                                        </td>
                                        <td class="auto-style2" style="width: 200px">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("iletisimTarih","{0:dd MMMM yyyy}") %>' Font-Size="12px" ForeColor="#666666"></asp:Label>
                                        </td>
                                        <td class="auto-style2">
                                           <a href="mesajlar.aspx?iletisimID=<%#Eval("iletisimID") %>&islem=sil"> <img alt="" class="auto-style3" src="../tema/post-delete.png" /></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" colspan="4" style="border-bottom-style: dotted; border-bottom-width: 1px; border-bottom-color: #FFFFFF">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisimIcerik") %>' ForeColor="#333333"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                
                            </div>
                         
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

