<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="yorumlar.aspx.cs" Inherits="admin_yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 425px;
        }

        .auto-style3 {
            width: 25px;
            height: 25px;
        }

        .auto-style8 {
            width: 50px;
            height: 37px;
        }
        .auto-style9 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>

         <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;line-height:25px;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnArti" runat="server" Height="25px"  Text="+" Width="25px" BorderColor="White" OnClick="btnArti_Click" />
            &nbsp;
        <asp:Button ID="btnEksi" runat="server" Height="25px"   Text="-" Width="25px" BorderColor="White" OnClick="btnEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Onaysız Yorum Paneli
        </div>
        <asp:Panel ID="pnl_YorumGoster" runat="server"   BorderColor="#99CCFF" ForeColor="White">




        <asp:DataList ID="dl_yorum" runat="server" Width="700px">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: 131px; float: left">
                        <div style="float: left; width: 590px; height: 25px; background-color: #009999;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width: 590px; height: 25px; float: left; color: #666666; background-color: #00D2D2;">
                            <span class="auto-style9">Makale: </span>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label>
                        </div>
                        <div style="width: 590px; height: auto; float: left; background-color: #15FFFF;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="width: 590px; height: 25px; float: left;">
                            <table class="auto-style1" style="text-align: right">
                                <tr>
                                    <td class="auto-style2">
                                        <a href="yorumGuncelle.aspx?yorumID=<%#Eval("yorumID") %>&makaleID=<%#Eval("makaleID") %>"><img alt="" class="auto-style3" src="../tema/refresh%20(1).png" /></a>
                                    </td>
                                    <td>&nbsp;<a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islem=sil"><img alt="" class="auto-style8" src="../tema/post-delete.png" style="width: 32px; height: 32px" /></a></td>
                                    <td>
                                       <a href="yorumcevap.aspx?makaleID=<%#Eval("makaleID")%>"> <img alt="" class="auto-style3" src="../tema/answer.png" /></a>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <div style="width: 690px; height: 40px;"></div>
                </div>

            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <div style="height:30px;"></div>


          <div style="height: 25px; color: #fff; background-color: #2a595a; font-weight: bolder;line-height:25px;">
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_onaylananarti" runat="server" Height="25px"  Text="+" Width="25px" BorderColor="White" OnClick="btn_onaylananarti_Click"  />
            &nbsp;
        <asp:Button ID="btn_onaylananeksi" runat="server" Height="25px"   Text="-" Width="25px" BorderColor="White" OnClick="btn_onaylananeksi_Click1"  />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Onaylanan Yorum Paneli
        </div>
        <asp:Panel ID="pn_yorumOnayli" runat="server"   BorderColor="#99CCFF" ForeColor="White">




        <asp:DataList ID="dl_onayli" runat="server" Width="700px">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("yorumResim") %>' Width="60px" />
                    </div>
                    <div style="width: 590px; height: 131px; float: left">
                        <div style="float: left; width: 590px; height: 25px; background-color: #009999;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18px" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("yorumTarih","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width: 590px; height: 25px; float: left; color: #666666; background-color: #00D2D2;">
                            <span class="auto-style9">Makale: </span>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label>
                        </div>
                        <div style="width: 590px; height: auto; float: left; background-color: #15FFFF;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#666666"></asp:Label>
                        </div>
                        <div style="width: 590px; height: 25px; float: left;">
                            <table class="auto-style1" style="text-align: right">
                                <tr>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        &nbsp;<a href="yorumGuncelle.aspx?yorumID=<%#Eval("yorumID") %>&makaleID=<%#Eval("makaleID") %>"><img alt="" class="auto-style8" src="../tema/post-delete.png" style="width: 32px; height: 32px" /></a></td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <div style="width: 690px; height: 40px;"></div>
                </div>

            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <div style="height:30px;"></div>



    </div>
</asp:Content>

