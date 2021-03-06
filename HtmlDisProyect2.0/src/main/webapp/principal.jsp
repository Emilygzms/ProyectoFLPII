<%-- 
    Document   : principal
    Created on : 21 nov. 2021, 17:26:56
    Author     : Sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio | D CARLOS</title>
        <link rel="shortcut icon" href="img/carlosafro.png" type="image/x-icon">  
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800&display=swap" rel="stylesheet"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     
         <style type="text/css">
         * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'open sans';
}

.contenedor {
    padding: 60px 0;
    width: 90%;
    max-width: 1000px;
    margin: auto;
    overflow: hidden;
}

.titulo {
    color: #076FE5;
    font-size: 30px;
    text-align: center;
    margin-bottom: 60px;
}

/* Header */

#header2 {
    background-image: url(img/banner-bg.jpg);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
    background-attachment: fixed;
    position: relative;
}

nav{
    text-align: right;
    padding: 30px 50px 0 0;
}

nav > a{
    color:#fff;
    font-weight: 600;
    text-decoration: none;
    margin-right: 20px;
}

nav > a:hover{
    color:#5192EC;
    text-decoration: underline;
}

header .textos-header{
    display: flex;
    height: 430px;
    width: 100%;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
}

.textos-header h1{
    font-size: 60px;
    color:#fff;
    font-family: 'Shorelines Script', cursive;
    color: #fff;
    font-weight: 700;
    margin-top: 0;
    margin-bottom: 10px;
}

.textos-header h2{
    font-size: 30px;
    font-weight: 300;
    color:#fff;
}

.textos-header p{
    color: #fff;
    font-size: 32px;
    font-weight: 300;
    margin-top: 10px;
    margin-bottom: 40px;
}

.wave{
    position: absolute;
    bottom: 0;
    width: 100%;
}

/* About us */

main .sobre-nosotros{
    padding: 30px 0 60px 0;
}
.contenedor-sobre-nosotros{
    display: flex;
    justify-content: space-around;
}

.imagen-about-us{
    width: 32%;
}

.sobre-nosotros .contenido-textos{
    width: 48%;
}

.contenido-textos h3{
    margin-bottom: 15px;
}

.contenido-textos h3 span{
    background: #E0EAFC;
    color: #fff;
    border-radius: 50%;
    display: inline-block;
    text-align: center;
    width: 30px;
    height: 30px;
    padding: 2px;

}

.contenido-textos p{
    
    padding: 0px 0px 30px 15px;
    font-weight: 300;
    text-align: justify;
}

/* Galeria */


.portafolio{
    background: #f2f2f2;
}

.galeria-port{
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
}

.imagen-port{
    width: 24%;
    margin-bottom: 10px;
    overflow: hidden;
    position: relative;
    cursor: pointer;
    box-shadow: 0 0 6px 0 rgba(0, 0, 0, .5);
}

.imagen-port > img{
    align-items: center;
    width: 240px;
    height: 230px;
    object-fit: cover;
    display: block;
}

.hover-galeria{
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    transform: scale(0);
    background: hsla(273,91%,27%, 0.7);
    transition: transform .5s;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.hover-galeria img{
    width: 50px;
}

.hover-galeria p{
    color: #fff;
}

.imagen-port:hover .hover-galeria{
    transform: scale(1);
}

/* Clients */

.cards{
    display: flex;
    justify-content: space-around;
}

.cards .card{
    background: #E0EAFC;
    display: flex;
    width: 30%;
    height: 200px;
    align-items: center;
    justify-content: space-around;
    border-radius: 5px;
    box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.6);
}

.cards .card img{
    width: 100px;
    height: 100px;
    object-fit: cover;
    border: 1px solid #fff;
    border-radius: 50%;
    display: block;
}

.cards .card > .contenido-texto-card{
    width: 60%;
  
    color: #505357;
}

.cards .card > .contenido-texto-card p{
    font-weight: 200; 
    padding-top: 10px;
}

/*  Our team */

.about-services{
    background: #f2f2f2;
    padding-bottom: 30px;
}


.servicio-cont{
    display:flex;
    justify-content: space-between;
    align-items: center;
}

.servicio-ind{
    width: 28%;
    text-align: center;
}

.servicio-ind img{
    width: 180px;
    height: 180px;
}

.servicio-ind h3{
    margin: 10px 0;
}

.servicio-ind p{
    font-weight: 300;
    text-align: center;
}

/* footer */

footer{
    background: #E0EAFC;
    padding: 60px 0 30px 0;
    margin: auto;
    overflow: hidden;
}

.contenedor-footer{
    display: flex;
    width: 90%;
    justify-content: space-around;
    margin: auto;
    padding-bottom: 50px;
    border-bottom: 1px solid #ccc;
}

.content-foo{
    text-align: center;
}

.content-foo img{
    width: 10%;
}

.content-foo h3{
    color: #fff;
    margin: 10px 0;
    padding-bottom: 5px;
    margin-bottom: 10px;
}

.content-foo p{
    color: #0E0F0F;
}

.titulo-final{
    text-align: center;
    font-size: 24px;
    margin: 20px 0 0 0;
    color: #9e9797;
}
.col-md-5 {
    width: 33.33333333%;
    float: left;
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.flex-center{
    width: 100%;
    height: 75px;
    background-image: url(img/las2.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    position: relative;
   
}

.partsuperior{
    text-align: right;
    
}
.imgflex{
    width: 50px;
    height: 100%;
    position: absolute;
    right: 60px; 
    top: 10px;
}
#about .about-img {
    display: inline-block;
    position: relative;
}
#about .about-img:before {
    display: block;
    content: '';
    position: absolute;
    top: 8px;
    right: 8px;
    bottom: 8px;
    left: 8px;
    border: 1px solid rgba(255, 255, 255, 0.5);
}
#about .about-text {
    margin-left: 120px;
}
.col-md-6 {
    width: 50%;
}

.aflex{
    text-align: right;
    color:#fff;
    font-weight: 600;
    text-decoration: none;
    
}
.contenedornosprincp{
    margin: 0;
    padding: 0;
    
}
.contenedornos{
    width: 100%;
    max-width: 1000px;
    margin: auto;
    padding: 60px;
}
.contenedornos img{
    width: 50%; 
    height: 50%;
    float: left;
    margin-right: 20px;
    margin-bottom: 20px;
}
.contenedornos p{
    text-align: justify;
}

        .titulo-final{
    text-align: center;
    font-size: 14px;
    margin: 20px 0 0 0;
    color: #000000;
}
.content-foo{
    text-align: center;
}

.content-foo img{
    width: 10%;
}

.content-foo h3{
    color: #fff;
    margin: 10px 0;
    padding-bottom: 5px;
    margin-bottom: 10px;
}

.content-foo p{
    color: #0E0F0F;
}

#footer {
    background: #D4ECDD;
    padding: 50px 0 20px 0;
    overflow: hidden;
    margin: auto;
}
.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    margin-bottom: 15px;
}
.text-center {
    text-align: center;
}
.container:before, row:before{
    display: table;
    content: " ";
}
.container:after{
    clear: both;
    display: table;
    content: " ";
}
#about {
    padding: 100px 0;
}

.col-md-6{
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.col-md-5 {
    width: 33.33333333%;
    float: left;
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
        #header1 {
            min-height: 90px;
            background: #212020;
            padding: 15px 0;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 998;
        }
        .right_header_info ul li {
        display: inline;
        font-size: 16px;
        margin-left: 80%;
        color: #eaeaea;
        font-weight: 400;
        float: left;
    }
/*box que ofrecemos */

.row {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    margin-bottom: 10px;
}
.col-lg-6 {
    -ms-flex: 0 0 50%;
    flex: 0 0 50%;
    max-width: 50%;
}

.col-md-4 {
    width: 33.33333333%;
    float: left;
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.section-title{
    margin-bottom: 70px;
}
.col-md-offset-1 {
    margin-left: 8.33333333%;
}
.col-md-10 {
    width: 83.33333333%;
    
}

/*Para el carrusel*/

.itemCarrusel{ 
    height: 500px;
    position: relative;
}
.tarjetaCarrusel{
    background-color: blue;
    height: 100%;
    
}

.flechasCarrusel{ 
    position: absolute;
    top: 0;
    height: 100%;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px;
}

#conteItemsCarusel{
   width: 700px;
   height: 500px;
   overflow: hidden; 
   margin-top: 50px;
   margin-left: auto;
   margin-right: auto;
   
}

#tarjetaCarrusel-1{
    background-color: mediumorchid;
}
#tarjetaCarrusel-2{
    background-color: red;
}    
#tarjetaCarrusel-3{
    background-color: wheat;
}  
.fiz{
    width: 20px;
    height: 20px;
}

.fez{
    width: 20px;
    height: 20px;
}

header{
    background-color: #505357;
}
.imgbar{
    height: 100%;
    width: 100%;   
}
        </style>
    </head>
    
    <body>   
            <header id="header1">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="full">
                        <a class="logo" href="inicio"><img width='50%' src="img/logo.jpg"> </a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="full">
                        <div class="right_header_info">
                            <ul>
                                <li class="button_user">
                                    <a class="cuenta-user" href="login">
                                        Ingresa o Crea tu cuenta
                                    </a>
                                </li>
                            </ul>
                                     
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
        <br>
        <br><br>
        <header id="header2">
        <section class="textos-header">
            <h1>Restaurant D'Carlos</h1>
            <p>El aut??ntico sabor del mar </p>
        </section>          
        <nav>
            <a href="inicio">Inicio</a>
            <a href="acercade">Acerca de</a>
            <a href="menu">Menu</a>
            <a href="Zreparto">Zona de reparto</a>
            <a href="Reserva">Reservas</a>
            <a href=""><img src="img/basket.svg" style="width: 2%; height: 2%"></a>
        </nav>      
     
    </header>

        
<div id="conteItemsCarusel">
            <div class="itemCarrusel" id="itemCarrusel-1">
            <div class="tarjetaCarrusel" id="tarjetaCarrusel-1"><img class="imgbar" src="img/slider/1.jpeg" alt=""></div>
            <div class="flechasCarrusel">
                <a href="#itemCarrusel-3"> 
                <img class="fiz" src="img/izquierda.png" alt="">
                </a> 
                <a href="#itemCarrusel-2">
                <img class="fez" src="img/derecha2.png" alt="">
                </a>  
            </div>
        </div>
            <div class="itemCarrusel" id="itemCarrusel-2">
            <div class="tarjetaCarrusel" id="tarjetaCarrusel-2"><img class="imgbar" src="img/slider/2.jpeg" alt=""></div>
            <div class="flechasCarrusel">
            <a href="#itemCarrusel-1"> 
                <img class="fiz" src="img/izquierda.png" alt="">
                </a> 
                <a href="#itemCarrusel-3">
                <img class="fez" src="img/derecha2.png" alt="">
                </a> 
            </div>
        </div>
            <div class="itemCarrusel" id="itemCarrusel-3">
            <div class="tarjetaCarrusel" id="tarjetaCarrusel-3"><img class="imgbar" src="img/slider/3.jpeg" alt=""></div>
            <div class="flechasCarrusel">
            <a href="#itemCarrusel-2"> 
                <img class="fiz" src="img/izquierda.png" alt="">
                </a> 
                <a href="#itemCarrusel-4">
                <img class="fez" src="img/derecha2.png" alt="">
                </a> 
            </div>
        </div>
    <div class="itemCarrusel" id="itemCarrusel-4">
            <div class="tarjetaCarrusel" id="tarjetaCarrusel-4"><img class="imgbar" src="img/slider/4.jpeg" alt=""></div>
            <div class="flechasCarrusel">
            <a href="#itemCarrusel-3"> 
                <img class="fiz" src="img/izquierda.png" alt="">
                </a> 
                <a href="#itemCarrusel-1">
                <img class="fez" src="img/derecha2.png" alt="">
                </a> 
            </div>
        </div>
   
        </div>   

    <main>
              
        <section class="clientes contenedor">
            <h2 class="titulo">Que dicen nuestros clientes</h2>
            <div class="cards">
                <div class="card">
                    <img src="img/humberto.png" alt="">
                    <div class="contenido-texto-card">
                        <h4>Humberto</h4>
                        <p>Excelente ambiente y servicio.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/miguel.png" alt="">
                    <div class="contenido-texto-card">
                        <h4>Miguel</h4>
                        <p>No espere mucho y todo llego en orden.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/cliente4.png" alt="">
                    <div class="contenido-texto-card">
                        <h4>Carlos</h4>
                        <p>El personal fue muy amable.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="about-services">
            <div class="contenedor">
                <h2 class="titulo">Nuestros servicios</h2>
                <div class="servicio-cont">
                    <div class="servicio-ind">
                        <img src="img/il2Deliv.svg" alt="">
                        <h3>Delivery</h3>
                        <p>Desde la comodida de tu hogar.</p>
                    </div>
                    <div class="servicio-ind">
                        <img src="img/il3App.svg" alt="">
                        <h3>Menu iteractivo</h3>
                        <p>Variedad de platos a tu disposici??n.</p>
                    </div>
                    <div class="servicio-ind">
                        <img src="img/il4Comi.svg" alt="">
                        <h3>Eventos especiales</h3>
                        <p>Servicios personalizados.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
        <br>
    <br>
    <div id="footer">
    <div class="container text-center">
      <div class="col-md-5">
          <div class="content-foo">
              <a title="Click para navegar hasta nosotros" target="_blank" href="https://goo.gl/maps/nXNLNmrm8h9ackLp7" >
                  <img src="img/ubicacion.png" alt="Click para navegar hasta nosotros">
              </a>
          </div>
        <h4>Ubicaci??n</h4>
      </div>
      <div class="col-md-5">
          <div class="content-foo">
              <a title="Whatsapp1" target="_blank" href="https://wa.me/944788482" >
                  <img src="img/whatsapp.png" alt="Whatsapp">
              </a>
          </div>
        <h4>Whatsapp</h4>
      </div>
        <div class="col-md-5">
          <div class="content-foo">
              <a title="Llamar negocio" target="_blank" href="tel:+51956292125" >
                  <img src="img/iphone.png" alt="Llamar negocio">
              </a>
          </div>
        <h4>Ll??manos</h4>
      </div>
        <hr>
    </div>
          <p class="titulo-final">Copyright ???? 2021.D'Carlos Todos los derechos reservados.</p>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
