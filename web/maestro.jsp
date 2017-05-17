<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%if(session.getAttribute("userType")==null||(String)session.getAttribute("userType")!="docente")
    response.sendRedirect("index.jsp");
%>
<html lang="es">
    <head>
        <title>Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="extraSources/css/bootstrap.min.css">
        <link rel="stylesheet" href="extraSources/css/mainStyles.css">
    </head>
    <body>
        <form action="AccountController">
            <select name="asignatura">
                <option value=""></option>
            </select>
            <input type="hidden" name="origin" value="maestro">
        </form>
    </body>
</html>
