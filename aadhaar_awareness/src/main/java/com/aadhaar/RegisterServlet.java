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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("RegisterPage.jsp");
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            // STEP 1: GET FORM DATA
            String name = request.getParameter("name");
            String register_no = request.getParameter("register_no");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Connection con = DBConnection.getConnection();

            // STEP 2: CHECK DUPLICATE REGISTER NUMBER
            PreparedStatement check = con.prepareStatement(
                    "SELECT * FROM students WHERE register_no=?"
            );

            check.setString(1, register_no);
            ResultSet rs = check.executeQuery();

            // IF USER ALREADY EXISTS
            if (rs.next()) {

                rs.close();
                check.close();
                con.close();

                // REDIRECT BACK WITH ERROR MESSAGE
                response.sendRedirect("RegisterPage.jsp?error=exists");
                return;
            }

            // STEP 3: INSERT NEW USER
            String sql =
                    "INSERT INTO students(name,register_no,email,password) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, register_no);
            ps.setString(3, email);
            ps.setString(4, password);

            int result = ps.executeUpdate();

            // STEP 4: SUCCESS OR FAILURE
            if (result > 0) {
                response.sendRedirect("LoginPage.jsp");
            } else {
                response.sendRedirect("RegisterPage.jsp?error=failed");
            }

            // CLOSE CONNECTIONS
            ps.close();
            check.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("RegisterPage.jsp?error=exception");
        }
    }
}