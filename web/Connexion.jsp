<%-- 
    Document   : Connexion
    Created on : 16 janv. 2017, 14:12:26
    Author     : Yann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
    </head>
    
    <body>
        <p> Entrez vos informations de connexion </p>
        <form id="formulaire">
            <p> Identifiant :</p>
            <input type="text" placeholder="Identifiant" id="Id"> <br />
            <p> Mot de passe : </p>
            <input type="password" placeholder="Mot de Passe" id="mdp"> 
            <br/> <br/>
            <input type="submit" value="Confirmer" id="confirmer">
        </form>
        
        <script>
            var formulaire = document.getElementById('formulaire');
            var id = document.getElementById("Id");
            var mdp = document.getElementById("mdp");
            var conf = document.getElementById('confirmer');
            function writeCookie(name,value,days) {
                var date, expires;
                if (days) {
                    date = new Date();
                    date.setTime(date.getTime()+(days*24*60*60*1000));
                    expires = "; expires=" + date.toGMTString();
                        }else{
                    expires = "";
                }
                document.cookie = name + "=" + value + expires + "; path=/";
            }
            conf.onclick= function(){
                if(id.value==="Yann" && mdp.value==="1234")
                {
                    alert('Info ok'); 
                    writeCookie(CYann,"",1);
                }
                else if(id.value==="Thomas" && mdp.value==="1234")
                {
                    alert('Info ok'); 
                    writeCookie(CThomas,"",1);
                }
                else if(id.value==="Zackaria" && mdp.value==="1234")
                {
                    alert('Info ok'); 
                    writeCookie(CZackaria,"",1);
                }
                else
                {
                    alert("Erreur");
                }
            };
            
            
        </script>   
    </body>
</html>
