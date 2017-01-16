<%-- 
    Document   : Panier
    Created on : 5 janv. 2017, 15:24:39
    Author     : zackaria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%int i;
            Cookie[] cookies = request.getCookies();
			for(i=0; i < cookies.length; i++) {
				Cookie MonCookie = cookies[i];
                                if("ram".equals(cookies[i].getName())){
                                    pageContext.setAttribute("ram", cookies[i].getValue());
                                }else if("cpu".equals(cookies[i].getName())){
                                    pageContext.setAttribute("cpu", cookies[i].getValue());
                                }else if("cg".equals(cookies[i].getName())){
                                    pageContext.setAttribute("cg", cookies[i].getValue());
                                }
                                
                        } 
         
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% if("1".equals(request.getAttribute("refresh"))){
            request.setAttribute("refresh", "0");
            out.println("<meta http-equiv='refresh' content='0'>");
        }
        %>
        <title>Panier</title>
    </head>
    <body>
        <p>Carte graphique : ${cg}</p>
        <p>Processeur : ${cpu}</p>
        <p>RAM :${ram} GB</p>
    </body>
</html>
