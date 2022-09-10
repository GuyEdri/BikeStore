<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="OrderComplete.aspx.cs" Inherits="ProjectCars.OrderComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Order.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <form style="padding-top: 71px;" runat="server">
        <div class="container">
            <div class="container wrapper">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                        <!--SHIPPING METHOD-->
                        <div class="panel panel-info">
                            <div class="panel-heading">כתובת</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <h4>כתובת למשלוח</h4>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-xs-12">
                                        <strong>שם משפחה:</strong>
                                        <asp:TextBox ID="Lnametxt" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6 col-xs-12">
                                        <strong>שם פרטי:</strong><br />
                                        <asp:TextBox ID="Fnametxt" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="span1"></div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>כתובת:</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="Addrestxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>עיר:</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="Citytxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>מיקוד:</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="Ziptxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>טלפון:</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="Phonetxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>אימייל:</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="Emailtxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--SHIPPING METHOD END-->
                        <!--CREDIT CART PAYMENT-->
                        <div class="panel panel-info">
                            <div class="panel-heading"><span><i class="glyphicon glyphicon-lock"></i></span>תשלום בטוח</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="col-md-12"><strong>סוג כרטיס:</strong></div>
                                    <div class="col-md-12">
                                        <select id="CreditCardType" name="CreditCardType" class="form-control" runat="server">
                                            <option value="5">Visa</option>
                                            <option value="6">MasterCard</option>
                                            <option value="7">American Express</option>
                                            <option value="8">Discover</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>מספר כרטיס אשראי:</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="CardNumtxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12"><strong>ספרות בגב הכרטיס :</strong></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="CardCvvtxt" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <strong>תוקף כרטיס</strong>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control" name="" runat="server" id="monthtxt">
                                            <option value="">חודש</option>
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <select class="form-control" name="">
                                            <option value="">שנה</option>
                                            <option value="2015">2015</option>
                                            <option value="2016">2016</option>
                                            <option value="2017">2017</option>
                                            <option value="2018">2018</option>
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                            <option value="2022">2022</option>
                                            <option value="2023">2023</option>
                                            <option value="2024">2024</option>
                                            <option value="2025">2025</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <span>תשלום מאובטח באמצעות כרטיס האשראי שלך.</span>
                                    </div>
                                    <div class="col-md-12">
                                        <ul class="cards">
                                            <li class="visa hand">Visa</li>
                                            <li class="mastercard hand">MasterCard</li>
                                            <li class="amex hand">Amex</li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:Button ID="BtnBuy" runat="server" OnClick="BtnBuy_Click" CssClass="btn btn-primary btn-submit-fix" Text="תשלום"></asp:Button>
                                        <asp:Literal ID="paymentltl" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--CREDIT CART PAYMENT END-->
                    </div>
                </div>
            </div>
            <div class="row cart-footer">
            </div>
        </div>
    </form>
</asp:Content>
