<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userType;
    if(session.getAttribute("userType")==null)
        response.sendRedirect("index.jsp");
    else
        userType=(String)session.getAttribute("userType");
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="extraSources/css/bootstrap.min.css">
        <link rel="stylesheet" href="extraSources/css/mainStyles.css">
    </head>
    <%
        switch(userType){
    %>
            <body style="font-size: large">
                <nav class="navbar navbar-inverse sidebar-nav">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">NEXUS Controller</a>
                        </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <!--  <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Page 1-1</a></li>
                                <li><a href="#">Page 1-2</a></li>
                                <li><a href="#">Page 1-3</a></li>
                            </ul>
                                </li>-->
                                <li><a href="#">Tareas</a></li>
                                <li><a href="#">Calificaciones</a></li>
                                <li><a onclick="">Enviar mensaje a maestro</a></li>
                            </ul>
                            <!--<ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>-->
                        </div>
                    </div>
                </nav>
                <!-- Esta tabla debe de ser rellenada con la base de datos -->
                <div class="container" id="inyectable">
                    <div>
                        <h2 style="text-align: center">Ultimas tareas</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Materia</th>
                                    <th>Fecha</th>
                                    <th>Completada</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Matematicas<%--(String)request.getAttribute("materia")--%></td>
                                    <td>5/17<%--(String)request.getAttribute("fecha")--%></td>
                                    <td>
                                        <%
                                        if(Boolean.parseBoolean((String)request.getAttribute("seExpiro")))
                                            out.println("<span class=\"glyphicon glyphicon-remove\"></span>\n");
                                        else
                                            out.println("<span class=\"glyphicon glyphicon-ok\"></span>\n");
                                    %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Español</td>
                                    <td>5/17</td>
                                    <td>
                                        <%
                                        if(Boolean.parseBoolean((String)request.getAttribute("seExpiro")))
                                            out.println("<span class=\"glyphicon glyphicon-remove\"></span>\n");
                                        else
                                            out.println("<span class=\"glyphicon glyphicon-ok\"></span>\n");
                                    %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Judios</td>
                                    <td>5/17</td>
                                    <td>
                                        <%
                                        if(Boolean.parseBoolean((String)request.getAttribute("seExpiro")))
                                            out.println("<span class=\"glyphicon glyphicon-remove\"></span>\n");
                                        else
                                            out.println("<span class=\"glyphicon glyphicon-ok\"></span>\n");
                                    %>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </body>
            <script src="extraSources/js/jquery-3.2.1.min.js"></script>
            <script src="extraSources/js/bootstrap.min.js"></script>
    <%
        }
    %>
</html>
