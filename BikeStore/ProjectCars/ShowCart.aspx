<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="ShowCart.aspx.cs" Inherits="ProjectCars.ShowCart" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <form id="form1" runat="server" style="padding-top: 71px;">
        <div>
            <asp:Repeater ID="RptCart" runat="server">
                <ItemTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-10 col-md-offset-1">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th class="text-center">מחיר</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="col-sm-8 col-md-6">
                                                <div class="media">
                                                    <a class="thumbnail pull-right" href="#">
                                                        <img class="media-object" src="<%#Eval("PImage")%>" width="250" /></a>
                                                    <div class="media-body">
                                                        <h4 class="media-heading"><strong><%#Eval("PName")%></strong></h4>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="col-sm-1 col-md-1" style="text-align: center">
                                                <input class="form-control" value="<%#Eval("Amount")%>">
                                            </td>
                                            <td class="col-sm-1 col-md-1 text-center"><strong><%#Eval("PPrice")%></strong></td>
                                            <td class="col-sm-1 col-md-1">
                                                <asp:Button ID="Erase" runat="server" OnCommand="Erase_Command" CommandName="Erase" CommandArgument='<%#Eval("Pid")%>' Text="הסר מוצר" CssClass="btn btn-warning btn-circle" />
                                            </td>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="Right">
                <a href='javascript:history.go(-1)' class="btn btn-info">המשך בקניה</a>
                <asp:Button ID="ClearCart" runat="server" Text="אפס את סל הקניות" OnClick="ClearCart_Click" CssClass="btn btn-danger" />
            </div>
            <div class="Left">
                <h3>
                    <asp:Literal ID="LtlCart" runat="server" /></h3>
                <br />
                <asp:Button ID="Buy" runat="server" OnClick="Buy_Click" CssClass="btn btn-success" Text="לתשלום" />
            </div>
        </div>
    </form>
</asp:Content>
