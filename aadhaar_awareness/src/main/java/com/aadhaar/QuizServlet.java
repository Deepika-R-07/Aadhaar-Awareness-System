package com.aadhaar;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/QuizServlet")
public class QuizServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession(false);

            // Check whether student is logged in
            if (session == null || session.getAttribute("student_id") == null) {
                response.sendRedirect("LoginPage.jsp");
                return;
            }

            int student_id = (Integer) session.getAttribute("student_id");

            int score = 0;
            int total = 10;

            // Get answers
            String q1 = request.getParameter("q1");
            String q2 = request.getParameter("q2");
            String q3 = request.getParameter("q3");
            String q4 = request.getParameter("q4");
            String q5 = request.getParameter("q5");
            String q6 = request.getParameter("q6");
            String q7 = request.getParameter("q7");
            String q8 = request.getParameter("q8");
            String q9 = request.getParameter("q9");
            String q10 = request.getParameter("q10");

            // Correct Answers
            if ("A".equals(q1)) score++;
            if ("B".equals(q2)) score++;
            if ("A".equals(q3)) score++;
            if ("B".equals(q4)) score++;
            if ("A".equals(q5)) score++;
            if ("A".equals(q6)) score++;
            if ("A".equals(q7)) score++;
            if ("A".equals(q8)) score++;
            if ("A".equals(q9)) score++;
            if ("A".equals(q10)) score++;

            // Database Connection
            Connection con = DBConnection.getConnection();

            // Save quiz result
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO quiz_result(student_id, score, total_questions) VALUES(?,?,?)");

            ps.setInt(1, student_id);
            ps.setInt(2, score);
            ps.setInt(3, total);

            ps.executeUpdate();

            ps.close();
            con.close();

            // Store values in session for ResultPage.jsp
            session.setAttribute("score", score);
            session.setAttribute("total", total);

            // Redirect to Result Page
            response.sendRedirect("ResultPage.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ResultPage.jsp");
        }
    }
}