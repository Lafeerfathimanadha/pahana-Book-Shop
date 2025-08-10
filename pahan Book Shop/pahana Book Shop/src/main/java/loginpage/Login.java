package loginpage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @param <Varchar>
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
		
		protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");

		    // Validate user credentials (from DB or hardcoded)
		    if ("admin".equals(username) && "admin123".equals(password)) {
		        // On success, set session attribute (optional)
		        request.getSession().setAttribute("username", username);

		        
		    } else {
		        // On failure, set error message and forward back to login.jsp
		        request.setAttribute("errorMessage", "Invalid username or password");
		        request.getRequestDispatcher("login.jsp").forward(request, response);
		    }
		}

	}


