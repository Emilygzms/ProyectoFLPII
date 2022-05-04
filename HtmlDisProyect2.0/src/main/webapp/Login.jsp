<%-- 
    Document   : Login
    Created on : 21 nov. 2021, 20:49:57
    Author     : PROPIETARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">     
        <title>Inicio de sesión del cliente | D CARLOS</title>
        <link rel="shortcut icon" href="img/carlosafro.png" type="image/x-icon"> 
    </head>
    <style>
        * {
            box-sizing: border-box;
        }
        .contenedor{
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 0.5em;
            margin: 0.5em;
            border-radius: 0.25em;
            background-color: rgba(255, 255, 255, 1);
            box-shadow: 5em 2.5em 2em rgba(0, 0, 0, 0.06);
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: 50px;
            margin-left: 500px;
            margin-top: 200px;
            width: 50%;
            
        }
        :before {
            box-sizing: border-box;
            margin: 0;
        }
        body{
            background-image: url(img/fondologin.jpg);
        }
        img {
            vertical-align: middle;
            border-style: none;
        }
        img {
            max-width: 100%;
            height: auto;
        }

        .col-xl-6,.col-lg-6,.col-md-6, .col-sm-12, .col-xl-12, .col-lg-12, .col-md-12{
            position: relative;
            width: 100%;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px;
        }
        header {
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
ul, li, ol {
    margin: 0px;
    padding: 0px;
    list-style: none;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.cuenta-user::before{
    content: "";
    background-image: url(img/realuser.svg);
    background-size: 21px 22px;
    height: 22px;
    width: 21px;
    position: absolute;
    top: 0;
    bottom: 0;
    margin: auto 0;
    left: -24px;
}.btn-primary{
            background-color: #212020;
            border-color: #212020;
        }
        .btn-primary:hover{
            background-color: #000000;
            border-color: #000000;
        }
        .formulario{
            margin-left: 120px;
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
}
.text-center {
    text-align: center;
}
.container:before{
    display: table;
    content: " ";
}
.container:after{
    clear: both;
    display: table;
    content: " ";
}
.col-md-5 {
    width: 33.33333333%;
    float: left;
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}


    </style>
 
    <body class="bg-light">   

        <header>
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
        <div class="contenedor" style="text-align: center">
                  <div class=" col-md-12">
                     <h2 style="text-align: center">Ingresa a D' CARLOS</h2>
                     <br>
                     <p>"No pierdas el tiempo y disfruta de nuestros deliciosos platillos"</p>
                     <hr>
                  </div>
            <div class="formulario">
            
            <form action="open" method="post">
            <table>
                <tr>
                    <td>
                        <label>Nombre de usuario</label>
                        <input type="text" class="form-control" name="txtusuario" placeholder="Nombre de Usuario">
                    </td>
                    <td></td>
                    <td rowspan="4">
                        <div class="img-box">
                        <figure>
                            <img src="img/comidas.jpg" width="60%" alt="img" />
                        </figure>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Contraseña</label>
                        <input type="password" class="form-control" name="txtpassword"  placeholder="Contraseña">
                    </td>
                <tr>
                    <td>
                        <button class="btn btn-primary" type="submit">INGRESAR</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a class="btn btn-primary" style="width:100%; " href="create">Crear Cuenta</a>
                    </td>
                </tr>     
            </table>
            </form>
            </div>    
            </div>
        </div>
    
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
        <h4>Ubicación</h4>
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
        <h4>Llámanos</h4>
      </div>
        <hr>
    </div>
          <p class="titulo-final">Copyright Â© 2021.D'Carlos Todos los derechos reservados.</p>
      </div>
</body>
</html>
