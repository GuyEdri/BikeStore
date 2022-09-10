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
                            <asp:TextBox ID="FName" placeholder="שם פרטי" runat="server" CssClass="form-control" />
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
                            <asp:TextBox ID="Email" Placeholder="מייל" runat="server" CssClass="form-control" />
                        </div>
                        <asp:RegularExpressionValidator ID="EmailVal" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" ErrorMessage="אימייל שגוי" ForeColor="Red" />

                    </div>
                </div>
                <!-----For Password and confirm password---->
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-xs-4">
                            <label class="pass">סיסמה :</label>
                        </div>
                        <div class="col-xs-8">
                            <input type="password" name="password" id="password" placeholder="Enter your Password" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
