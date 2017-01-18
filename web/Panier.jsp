<%-- 
    Document   : Panier
    Created on : 5 janv. 2017, 15:24:39
    Author     : zackaria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%int i;
            int prixRam=0, prixCpu=0, prixCg=0;
            Cookie[] cookies = request.getCookies();
			for(i=0; i < cookies.length; i++) {
				Cookie MonCookie = cookies[i];
                                if("ram".equals(MonCookie.getName())){
                                    pageContext.setAttribute("ram", cookies[i].getValue());
                                    if("4".equals(MonCookie.getValue())){
                                        prixRam=25;
                                    } else if("8".equals(MonCookie.getValue())){
                                        prixRam=50;
                                    } else if("16".equals(MonCookie.getValue())){
                                        prixRam=100;
                                    }
                                    pageContext.setAttribute("prixRam", prixRam);
                                }else if("cpu".equals(MonCookie.getName())){
                                    pageContext.setAttribute("cpu", cookies[i].getValue());
                                    if("Intel".equals(MonCookie.getValue())){
                                        prixCpu=500;
                                    } else if("AMD".equals(MonCookie.getValue())){
                                        prixCpu=250;
                                    }
                                    pageContext.setAttribute("prixCpu", prixCpu);
                                }else if("cg".equals(MonCookie.getName())){
                                    pageContext.setAttribute("cg", cookies[i].getValue());
                                    if("Nvidia".equals(MonCookie.getValue())){
                                        prixCg=500;
                                    } else if("AMD".equals(MonCookie.getValue())){
                                        prixCg=250;
                                    }
                                    pageContext.setAttribute("prixCg", prixCg);
                                }
                                
                        }
                        pageContext.setAttribute("prixTotal", prixRam+prixCpu+prixCg);
         
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
        <p>Carte graphique: ${cg}: ${prixCg}€</p>
        <p>Processeur: ${cpu}: ${prixCpu}€</p>
        <p>RAM: ${ram} GB: ${prixRam}€</p>
        <p>Total: ${prixTotal}€</p>
    </body>
</html>
