<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectCars.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <form runat="server">
        <div class="con">
            <!---heading---->
            <header class="heading">כניסה למערכת</header>
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
                            <asp:TextBox ID="UserName" placeholder=" הזן שם פרטי" runat="server" CssClass="form-control" />
                        </div>
                        <asp:RequiredFieldValidator ID="FNameVal" runat="server" ControlToValidate="UserName" ErrorMessage="*הזן שם פרטי" ForeColor="red" />
                    </div>
                </div>
                <!-----For Password----->
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
                <div class="row">
                    <div class="col">
                        <asp:Literal ID="LtlLogin" runat="server"></asp:Literal>
                    </div>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto" style="margin-top: 50px">
                    <asp:Button ID="RegButton" runat="server" OnClick="BtnLogin_Click" type="button" CssClass="btn btn-outline-warning" Text="התחבר" Width="250" />
                    <div class="form-group ">
                        <asp:HyperLink ID="RegBtn" runat="server" CssClass="btn btn-warning" Text="הרשמה" NavigateUrl="~/Register.aspx" Width="250" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
