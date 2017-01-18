<%-- 
    Document   : erreur
    Created on : 11 janv. 2017, 17:23:02
    Author     : Yann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erreur</title>
    </head>
    <body>
        <p> une erreur est survenue </p>
        <p> <%= exception.getMessage() %> </p>
    </body>
</html>
