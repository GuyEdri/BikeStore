<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectCars.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Register.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <form id="form3" runat="server">
        <div class="con">
            <!---heading---->
            <header class="heading">טופס הרשמה</header>
            <hr></hr>
            <!---Form starting---->
            <div class="row ">
                <!--- For Name---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="firstname">שם פרטי :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="FName" placeholder=" הזן שם פרטי" runat="server" CssClass="form-control" />
                        </div>
                        <asp:RequiredFieldValidator ID="FNameVal" runat="server" ControlToValidate="FName" ErrorMessage="*הזן שם פרטי" ForeColor="red" />
                    </div>
                </div>
                <!-----For email---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="mail">אימייל :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="Email" Placeholder=" הזן מייל" runat="server" CssClass="form-control" />
                        </div>
                        <asp:RegularExpressionValidator ID="EmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" ErrorMessage="אימייל שגוי" ForeColor="Red" />
                    </div>
                </div>
                <!--For Phone number-->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="mail">טלפון :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="Phone" placeholder=" הזן מספר טלפון" runat="server" CssClass="form-control" />
                        </div>
                        <asp:RegularExpressionValidator ID="PhoneVal" runat="server" ErrorMessage="*הזן מספר טלפון" ValidationExpression="^([0-9]{10})$" ControlToValidate="Phone" ForeColor="Red" />
                    </div>
                </div>
                <!-----For Password and confirm password---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="pass">סיסמה :</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="UserPass" placeholder="הזן סיסמה" runat="server" TextMode="Password" CssClass="form-control" />
                        </div>
                        <asp:RequiredFieldValidator ID="PassVal" runat="server" ControlToValidate="UserPass" ErrorMessage="*הזן סיסמא" ForeColor="Red" />
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="pass">אימות סיסמה:</label>
                        </div>
                        <div class="col-xs-8">
                            <asp:TextBox ID="UserPass2" placeholder="אימות סיסמה" runat="server" TextMode="Password" CssClass="form-control" />
                        </div>
                        <asp:CompareValidator ID="CmpPass" runat="server" ControlToCompare="UserPass" ControlToValidate="UserPass2" ErrorMessage="*סיסמא ואימות סיסמא אינו תואם" ForeColor="Red" />
                    </div>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <asp:Button ID="RegButton" runat="server" OnClick="RegButton_Click" type="button" CssClass="btn btn-outline-warning" Text="הירשם" Width="250" />
                    <div class="form-group ">
                        <asp:HyperLink ID="LoginBtn" runat="server" CssClass="btn btn-warning" Text="משתמש רשום" NavigateUrl="~/Login.aspx" Width="250" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
