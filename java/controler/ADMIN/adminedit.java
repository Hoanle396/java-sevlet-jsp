/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler.ADMIN;

import DAO.homelist;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.product;

/**
 *
 * @author admin
 */
@WebServlet(name = "adminedit", urlPatterns = {"/ADMIN/adminedit"})
public class adminedit extends HttpServlet {

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
        request.getRequestDispatcher("/ADMIN/product").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        int id= Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String image3 = request.getParameter("image3");
        String image4 = request.getParameter("image4");
        String image5 = request.getParameter("image5");
        String context = request.getParameter("description");
        Float price =Float.parseFloat( request.getParameter("price"));
        
            product pro = new product();
            pro.setId(id);
            pro.setImage1(image1);
            pro.setImage2(image2);
            pro.setImage3(image3);
            pro.setImage4(image4);
            pro.setImage5(image5);
            pro.setName(name);
            pro.setContext(context);
            pro.setPrice(price);
            homelist add = new homelist();
            if (add.editproduct(pro) == true) {
                String data = "Thành Công";
                request.setAttribute("data", data);
               request.getRequestDispatcher("/ADMIN/").forward(request, response);
            } else {
                String data = "Thất bại";
                request.setAttribute("data", data);
               request.getRequestDispatcher("/ADMIN/").forward(request, response);
            }
        
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
