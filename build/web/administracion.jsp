<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if(session.getAttribute("userType")==null||(String)session.getAttribute("userType")!="administrativo")
    response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
