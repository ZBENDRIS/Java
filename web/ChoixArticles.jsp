<%-- 
    Document   : Commande
    Created on : 16 janv. 2017, 14:53:09
    Author     : p1506193
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>
        <h1>Choisissez vos articles</h1>
        <form method="post" action="Panier.jsp">
        <label for="cg">Sélectionnez la marque de la carte graphique:</label><br/>
        <select name="cg" id="cg">
        <option value="nvidia">Nvidia</option>
        <option value="amd">AMD</option>
        </select><br/>
        <label for="cpu">Sélectionnez la marque du processeur:</label><br/>
        <select name="cpu" id="cpu">
        <option value="intel">Intel</option>
        <option value="amd">AMD</option>
        </select><br/>
        <label for="ram">Sélectionnez la quantité de RAM:</label><br/>
        <select name="ram" id="ram">
        <option value=4>4GB</option>
        <option value=8>8GB</option>
        <option value=16>16GB</option>
        </select><br/>
        <input type="submit" value="Valider le panier"/>
        </form>
</body>
