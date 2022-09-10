<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProjectCars.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Contact.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <style>
        body {
            background-image: url('img/ContactBG.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 100vh;
            overflow: auto;
        }
    </style>
    <div class="con">
        <div class="row">
            <div class="col">
                <div class="contact-form">
                    <h1 class="title">צור קשר</h1>
                    <h2 class="subtitle">אנחנו כאן לשירותך.</h2>
                    <form action="mailto:guyedrix2@gmail.com" method="post" enctype="text/plain">
                        <input type="text" name="name" placeholder="שם פרטי" />
                        <input type="email" name="e-mail" placeholder="כתובת מייל" />
                        <input type="tel" name="phone" placeholder="טלפון" />
                        <textarea name="text" id="" rows="8" placeholder="ההודעה שלך"></textarea>
                        <button class="btn btn-outline-warning">קבל שיחה בחזרה</button>
                    </form>
                </div>
            </div>
            <div class="col-5">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d112061.09262729759!2d77.208022!3d28.632485!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x644e33bc3def0667!2sIndior+Tours+Pvt+Ltd.!5e0!3m2!1sen!2sus!4v1527779731123" width="100%" height="650px" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
