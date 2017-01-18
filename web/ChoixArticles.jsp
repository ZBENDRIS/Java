<%-- 
    Document   : Commande
    Created on : 16 janv. 2017, 14:53:09
    Author     : p1506193
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>
        <h1>Choisissez vos articles</h1>
        <form method="post" action="Controleur?action=Panier">
        <label for="cg">Sélectionnez la marque de la carte graphique:</label><br/>
        <select name="cg" id="cg">
        <option value="Nvidia">Nvidia: 500€</option>
        <option value="AMD">AMD: 250€</option>
        </select><br/>
        <label for="cpu">Sélectionnez la marque du processeur:</label><br/>
        <select name="cpu" id="cpu">
        <option value="Intel">Intel: 500€</option>
        <option value="AMD">AMD: 250€</option>
        </select><br/>
        <label for="ram">Sélectionnez la quantité de RAM:</label><br/>
        <select name="ram" id="ram">
        <option value=4>4GB: 25€</option>
        <option value=8>8GB: 50€</option>
        <option value=16>16GB: 100€</option>
        </select><br/>
        <input type="submit" value="Valider le panier"/>
        </form>
</body>
