<%-- 
    Document   : CrearCuenta
    Created on : 21 nov. 2021, 21:32:10
    Author     : PROPIETARIO max-width: 1134px;
            width: 100%;
            margin: auto;
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">     
        <style>
            * {
            box-sizing: border-box;
        }
            .create-form-personal{
            background-color: rgba(255, 255, 255, 1);
            box-shadow: 5em 2.5em 2em rgba(0, 0, 0, 0.06);
            text-align: center;
            padding: 0.5em;
            border-radius: 0.25em;
            margin-bottom: 25px;
            display: flex;
            flex-direction: column;
            
        }
        .max-container {
            
            margin-left: 500px;
            margin-right: 500px;
            margin-top: 150px;
        }
        .max-container2 {
            
            margin-left: 500px;
            margin-right: 500px;
            margin-top: 10px;
        }
        body{
            background-image: url(img/fondologin.jpg);
        }
        button{
    width: 250px; height: 50px;
        }
        .btn-primary{
            background-color: #212020;
            border-color: #212020;
        }
        .btn-primary:hover{
            background-color: #000000;
            border-color: #000000;
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
.col-md-5 {
    width: 33.33333333%;
    float: left;
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
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
.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
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
    font-size: 14px;
    margin: 20px 0 0 0;
    color: #000000;
}
        </style>
        <title>Crear cuenta | D CARLOS</title>
        <link rel="shortcut icon" href="img/carlosafro.png" type="image/x-icon"> 
    </head>
    <body>
        <form method="post" action="grabar">
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
            <div class="create-form-personal max-container">
                <h2>Información personal</h2>
                <hr>
                    <table>
                        <tr>
                            <td>Nombre de usuario</td>
                            <td>Apellido</td>
                        </tr>
                        <tr>
                            <td><img src="img/user.png"><input type="text" placeholder="Nombre" name="txtnombre"></td>
                            <td><img src="img/user.png"><input type="text" placeholder="Apellido" name="txtapellido"></td>
                        </tr>
                        <br>
                        <tr>
                            <td>Correo electrónico</td>
                            <td>Número de celular</td>
                        </tr>
                        <tr>
                            <td><img src="img/correo.png"><input type="text" placeholder="Correo electrónico" name="txtcorreo"></td>
                            <td><img src="img/celular.png"><input type="text" placeholder="Número de celular" name="txtnumero"></td>
                        </tr>
                    </table>
            </div>
            <br>
            <div class="create-form-personal max-container2">
                <h2>Información para inicio de sesión</h2>
                <hr>
                    <table>
                        <tr>
                            <td>Usuario Contraseña</td>
                            <td>Confirmar contraseña</td>
                        </tr>
                        <tr>
                            <td><input type="text" placeholder="Usuario" name="txtusuario"></td>
                            <td><img src="img/contraseña.png"><input type="password" placeholder="Contraseña" name="txtpassword1"></td>
                            <td><img src="img/contraseña.png"><input type="password" placeholder="Confirmar contraseña" name="txtpassword2"></td>
                        </tr>
                    </table>
                    <br>
                    <div justify-content: center>
                        <button class="btn btn-primary" type="submit" >ENVIAR</button>
                    </div>
                </div>
        </form>
    </body>
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
