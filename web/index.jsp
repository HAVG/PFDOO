<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%
        if(session.getAttribute("userType")!=null)
            switch((String)session.getAttribute("userType")){
                case "alumno":
                    response.sendRedirect("alumno.jsp");
                    break;
                case "docente":
                    response.sendRedirect("maestro.jsp");
                    break;
                case "administrativo":
                    response.sendRedirect("administracion.jsp");
                    break;
                default:
                    break;
            }
        
    %>
    <head>
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="extraSources/css/bootstrap.min.css">
        <link rel="stylesheet" href="extraSources/css/mainStyles.css">
        <style>
            .container{
                padding-left: 18%;
                padding-right: 18%;
            }
            .jumbotron-padder{
                padding-top: 12px;
                padding-bottom: 12px;
                padding-left: 30px;
                padding-right: 30px;
            }
            .jumbotron{
                background-color: #b0b0b0;
                color: #505050;
                text-align: center;
            }
        </style>
    </head>
    <body style="font-size: large; font-family: Serif;">
        <header>
            <div class="container" style="padding-top: 50px">
                <h1 style="text-align: center" class="col-xs-12">Inicio de Sesión
                    <small class="col-xs-12">Introduzca sus datos</small>
                </h1>
            </div>
        </header>
        <section>
            <div class="container" style="padding-top: 50px">
                <form action="mainController" method="post">
                    <div class="form-group">
                        <div class="col-sm-12 col-lg-3">
                            <label for="username">Usuario: </label>
                        </div>
                        <div class="col-sm-12 col-lg-9">
                            <input type="text" id="username" name="user" class="form-control">
                            <br>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12 col-lg-3 col">
                            <label for="password">Contraseña: </label>
                        </div>
                        <div class="col-sm-12 col-lg-9">
                            <input type="password" id="password" class="form-control" name="pass">
                            <br><br>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <button class="btn btn-info btn-block" type="submit">
                            Iniciar Sesion
                        </button>
                    </div>
                    <input type="hidden" name="origin" value="login">
                    <%--
                        REFERENCE 2 -- Con estas lineas de abajo intento delcarar decir, que si
                        las credencialess son incorrectas entonces se inyectara ese codigo
                    --%>
                    <%
                        if(session.getAttribute("loginError")!=null){
                            out.println("<div class=\"col-xs-12\">\n" +
                                    "                        <br><br><br><br>\n" +
                                    "                        <div class=\"jumbotron jumbotron-padder\">\n" +
                                    "                            Usuario o contraseña incorrectos.\n" +
                                    "                        </div>\n" +
                                    "                    </div>");
                        }
                    %>
                </form>
            </div>
        </section>
    </body>
    <script rel="script" src="extraSources/js/jquery-3.2.1.min.js"></script>
    <script rel="script" src="extraSources/js/bootstrap.min.js"></script>
</html>