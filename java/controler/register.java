/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import DAO.newuser;
import connectDB.connect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user;

/**
 *
 * @author admin
 */
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    String data = null;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String user = request.getParameter("username");

        if (email.isEmpty() || pass.isEmpty() || user.isEmpty()) {
            String alertMsg = "can't be empty!";
            request.setAttribute("data", alertMsg);
            request.getRequestDispatcher("/login.jsp").forward(request, response);

        } else {
            user uer = new user();
            uer.setUsername(user);
            uer.setEmail(email);
            uer.setPassword(pass);
            uer.setAccess(1);
            newuser add = new newuser();
            if (add.adduser(uer) == true) {
                data = "Đăng Kí Thành Công";
                request.setAttribute("data", data);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                data = "Tài Khoản Đã Tồn Tại";
                request.setAttribute("data", data);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
    }

}
