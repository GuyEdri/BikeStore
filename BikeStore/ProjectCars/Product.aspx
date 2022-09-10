<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ProjectCars.Product1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Product.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <video width="100%" style="padding-top: 71px;" muted="" loop="" autoplay="" poster="https://cdn-bjnfm.nitrocdn.com/rTdBwqNulnJUDgmQrQHsnKOrgPvVNpUu/assets/static/optimized/rev-cff91c2/wp-content/uploads/2017/11/334871_2020_KTM_RC16_44_33_Red-Bull-KTM-Factory-Racing_MotoGP_Static_Confrontation-1-min.jpg" id="motoVideo">
        <source src="https://www.motosport.co.il/wp-content/uploads/2020/07/KTM-790-DUKE-The-most-precise-street-weapon-_-KTM-1.mp4" type="video/mp4" nitro-exclude="">
    </video>
    <div class="panel-heading">
        <div class="panel-title text-center">
            <h1 class="title h1">-אופנועים-</h1>
            <hr />
        </div>
    </div>
    <form runat="server">
        <asp:Repeater runat="server" ID="Rpt">
            <ItemTemplate>
                <div class="row">
                    <div class="col productbox">
                        <img src='<%#Eval("Pimg")%>' style="width: 480px;">
                    </div>
                    <div class="col productbox">
                        <h1 class="producttitle"><%#Eval("Pname")%></h1>
                        <div class="producttitle"><%#Eval("Pdesc")%></div>
                        <div class="productprice">
                            <a class="btn btn-success btn-lg btn-block" href="Add2Cart.aspx?Pid=<%#Eval("Pid") %>" role="button">הוסף לעגלה</a>
                            <div class="pricetext" style="color:red;"><%#Eval("Pprice")%>₪</div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </form>
</asp:Content>
