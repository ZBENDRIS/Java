/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zackaria
 */
@WebServlet(urlPatterns = {"/Controleur"})
public class Controleur extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
            if ("Accueil".equals(request.getParameter("action"))){
                
                request.setAttribute("contenu", "Accueil.jsp");
                request.setAttribute("title", "Accueil");
                if(request.getParameter("Id")!=null){
                Cookie Id = new Cookie("Id", request.getParameter("Id"));
                response.addCookie(Id);
                }
                RequestDispatcher rd = request.getRequestDispatcher("Template.jsp");
                rd.forward(request, response);
            }
            else if ("Panier".equals(request.getParameter("action"))){
                if(request.getParameter("cg")!=null){
                    Cookie cg = new Cookie("cg", request.getParameter("cg"));
                    response.addCookie(cg);
                    Cookie cpu = new Cookie("cpu", request.getParameter("cpu"));
                    response.addCookie(cpu);
                    Cookie ram = new Cookie("ram", request.getParameter("ram"));
                    response.addCookie(ram);
                    request.setAttribute("contenu", "Redirection.jsp");
                    request.setAttribute("title", "Redirection");
                    RequestDispatcher rd = request.getRequestDispatcher("Template.jsp");
                    rd.forward(request, response);
                }else{
                request.setAttribute("contenu", "Panier.jsp");
                request.setAttribute("title", "Panier");
                RequestDispatcher rd = request.getRequestDispatcher("Template.jsp");
                rd.forward(request, response);
                }
            }else if ("Catalogue".equals(request.getParameter("action"))){
                request.setAttribute("contenu", "ChoixArticles.jsp");
                request.setAttribute("title", "Catalogue");
                RequestDispatcher rd = request.getRequestDispatcher("Template.jsp");
                rd.forward(request, response);
            }else if ("Connexion".equals(request.getParameter("action"))){
                request.setAttribute("contenu", "Connexion.jsp");
                request.setAttribute("title", "Connexion");
                RequestDispatcher rd = request.getRequestDispatcher("Template.jsp");
                rd.forward(request, response);
            }else if ("Deconnexion".equals(request.getParameter("action"))){
                request.setAttribute("contenu", "Deconnexion.jsp");
                request.setAttribute("title", "Deconnexion");
                int i;
                Cookie[] cookies = request.getCookies();
                for(i=0; i < cookies.length; i++) {
                    Cookie MonCookie = cookies[i];
                    if("Id".equals(MonCookie.getName())){
                        MonCookie.setMaxAge(0);
                        MonCookie.setValue("");
                        response.addCookie(MonCookie);
                    }
                }
                RequestDispatcher rd = request.getRequestDispatcher("Template.jsp");
                rd.forward(request, response);   
           }else if ("Cgu".equals(request.getParameter("action"))){
               RequestDispatcher rd = request.getRequestDispatcher("Cgu.jsp");
               rd.forward(request, response);
           }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
