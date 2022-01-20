/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import DAO.emailpro;
import DAO.homelist;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.product;
import model.reaect;

/**
 *
 * @author admin
 */
@WebServlet(name = "single", urlPatterns = {"/single"})
public class single extends HttpServlet {

    homelist home= new homelist();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        product lis=home.getbyid(id);
        request.setAttribute("lis",lis);
         List<reaect> li=home.getreaect();
          request.setAttribute("reaect", li);
        request.getRequestDispatcher("single.jsp").forward(request, response);
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
        String email= request.getParameter("email");
        emailpro mail= new emailpro();
        mail.addemail(email);
        response.sendRedirect("home");
        }
    }

