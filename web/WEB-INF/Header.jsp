<%-- 
    Document   : Header
    Created on : 11 janv. 2017, 17:08:51
    Author     : Zackaria-MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int i;
    Cookie[] cookies = request.getCookies();
    for(i=0; i < cookies.length; i++) {
        Cookie MonCookie = cookies[i];
        if("Id".equals(MonCookie.getName())){
            pageContext.setAttribute("pseudo", MonCookie.getValue());
            pageContext.setAttribute("action", "Deconnexion");
        }else{
            pageContext.setAttribute("action", "Connexion");
        }
    }
             
         
%>
<header>
  <nav>
        <ul>
            <li><a href="Controleur?action=Accueil">Accueil</a></li>
            <li><a href="Controleur?action=Catalogue">Catalogue</a></li>
            <li><a href="Controleur?action=${action}">${action}</a></li>
            <li><a href="Controleur?action=Panier">Panier</a></li>
        </ul>
        <% if("Deconnexion".equals(pageContext.getAttribute("action"))){
                  out.println("<p>Vous êtes connecté en tant que, "+pageContext.getAttribute("pseudo")+"</p>"); 
        }
        %>
  </nav>
</header>
