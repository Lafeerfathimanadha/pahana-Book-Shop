package Registerpage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class Register extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        // You should validate inputs here

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshopdb", "root", "");
            String sql = "INSERT INTO users(username, password, email, phone) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password); // In real app, hash password
            ps.setString(3, email);
            ps.setString(4, phone);

            int result = ps.executeUpdate();

            if(result > 0) {
                // Registration successful, redirect to login page
                response.sendRedirect("login.jsp");
            } else {
                // Registration failed, show error on register page
                request.setAttribute("errorMessage", "Registration failed. Try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }

            ps.close();
            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error: " + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
