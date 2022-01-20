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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.user;

/**
 *
 * @author admin
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            response.sendRedirect(request.getContextPath() + "/waiting");
            return;
        }
        // Check cookie
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("user")) {
                    session = request.getSession(true);
                    session.setAttribute("user", cookie.getValue());
                    response.sendRedirect(request.getContextPath() + "/waiting");
                    return;
                }
            }
        }

        request.getRequestDispatcher("login.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        connect con = new connect();
        if (email.isEmpty() || pass.isEmpty()) {
            String alertMsg = "Username and password can't be empty!";
            request.setAttribute("fail", alertMsg);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            
        } else {
            newuser log = new newuser();
            user user= log.login(email, pass);
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                session.setMaxInactiveInterval(10000);
                response.sendRedirect("home");
            } else {
                String alert = "Login fail!";
                request.setAttribute("fail1", alert);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        }

    }

}
