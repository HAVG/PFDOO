<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="extraSources/bootstrap.min.css">
        <link rel="stylesheet" href="extraSources/mainStyles.css">
        <style>
            .container{
                padding-left: 18%;
                padding-right: 18%;
            }
        </style>
    </head>
    <body style="font-size: large">
        <header>
            <div class="container" style="padding-top: 50px">
                <h1 style="text-align: center" class="col-xs-12">Inicio de Sesión</h1>
                <h1 style="text-align: center"><small class="col-xs-12">Introduzca sus datos</small></h1>
            </div>
        </header>
        <section>
            <div class="container" style="padding-top: 50px">
                <form action="AccountController" method="post">
                    <div class="form-group">
                        <div class="col-sm-12 col-lg-3">
                            <label for="user">Usuario: </label>
                        </div>
                        <div class="col-sm-12 col-lg-9">
                            <input type="email" id="user" class="form-control">
                            <br><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12 col-lg-3 col">
                            <label for="pass">Contraseña: </label>
                        </div>
                        <div class="col-sm-12 col-lg-9">
                            <input type="password" class="form-control" id="pass">
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </body>
    <script rel="script" src="extraSources/jquery-3.2.1.min.js"></script>
    <script rel="script" src="extraSources/bootstrap.min.js"></script>
</html>