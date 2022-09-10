<%@ Page Title="" Language="C#" MasterPageFile="~/MasterDefault.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectCars.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="DefaultPage.css?v4" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <form runat="server" class="bg-form">
        <!--Slider-->
            <div id="carouselExampleIndicators" style="padding-top:71px;" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="img/slider1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/sslider2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/sslider3.jpg" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/slider4.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">הקודם</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">הבא</span>
                </a>
            </div>
        <!--Slider End-->
        <!--Body-->
        <div class="row" style="padding-top:110px;" >
            <div class="Col-sm-1"></div>
            <div class="Col-sm ">
                <div class="card" style="width: 18rem;">
                    <img src="img/bike1.jpg" class="card-img-top" alt="..." width="350">
                    <div class="card-body">
                        <h5 class="card-title" style="color: limegreen">במבצע</h5>
                        <p class="card-text shadow p-2 mb-2 bg-white rounded">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">הוסף לסל</a>
                    </div>
                </div>
            </div>
            <div class="Col-sm">
                <div class="card" style="width: 18rem;">
                    <img src="img/bike2.jpg" class="card-img-top" alt="..." width="350">
                    <div class="card-body">
                        <h5 class="card-title" style="color: limegreen">במבצע</h5>
                        <p class="card-text shadow p-2 mb-2 bg-white rounded">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">הוסף לסל</a>
                    </div>
                </div>
            </div>
            <div class="Col-sm">
                <div class="card" style="width: 18rem;">
                    <img src="img/yamaha r1.jpg" class="card-img-top" alt="..." width="350">
                    <div class="card-body">
                        <h5 class="card-title" style="color: limegreen">במבצע</h5>
                        <p class="card-text shadow p-2 mb-2 bg-white rounded">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">הוסף לסל</a>
                    </div>
                </div>
            </div>
        </div>
        <section id="homepageFeatures" class="container-fullWidth" aria-label="Featured text">
            <div class="imgc">
                <div class="homepageFeatures-item">
                    <img src="img/defaultimg.jpg" class="homepageFeatures-img" alt="קריאת שירות">
                    <div>
                        <h2 class="h2">קריאת שירות</h2>
                        <p class="p">קריאת שירות - RECALL הנו שירות המאפשר לך לבחון באופן עצמאי האם רכבך נדרש לקריאת שירות יזומה על ידי היצרן. במקביל, בעלי הרכב הנדרש לקריאת שירות יקבלו מכתב בנושא באמצעות משרד התחבורה. חברת אלבר מציבה את השירות ללקוחותיה ואת בטיחות כלי הרכב אותם מייבאת ומוכרת בראש סדר העדיפויות. כיבואנית של המותג הארלי דיווידסון (Harley-Davidson), עומדת אלבר בקשר רציף עם לקוחותיה בכל קריאת שירות בטיחותית ומאפשרת לבדוק באתר זה את קריאת השירות.</p>
                        <asp:Button ID="ServBtn" runat="server" CssClass="btn btn-outline-warning" Text="לפתחית קריאת שירות" OnClick="ServBtn_Click" /><br />
                        <br />
                    </div>
                </div>
            </div>
        </section>
    </form>
    <!--End Body-->
</asp:Content>


