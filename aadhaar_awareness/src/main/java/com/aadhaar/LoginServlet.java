package com.aadhaar;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("LoginPage.jsp");
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM students WHERE email=? AND password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                // ✅ CREATE SESSION
                HttpSession session = request.getSession();

                // ✅ STORE IMPORTANT DATA
                session.setAttribute("student_id", rs.getInt("student_id"));
                session.setAttribute("name", rs.getString("name"));
                session.setAttribute("email", rs.getString("email"));

                // Optional: store register number
                session.setAttribute("register_no", rs.getString("register_no"));

                // ✅ GO TO DASHBOARD
                response.sendRedirect("Dashboard.jsp");

            } else {

                // ❌ LOGIN FAILED → BACK TO LOGIN PAGE
                response.sendRedirect("LoginPage.jsp?error=invalid");

            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("LoginPage.jsp?error=exception");
        }
    }
}