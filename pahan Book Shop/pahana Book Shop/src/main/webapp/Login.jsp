<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Bookshop Login</title>
  <!-- Bootstrap 5 CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">

  <div class="container"> 
    <div class="row justify-content-center align-items-center vh-100">
      <div class="col-md-5">
        <div class="card shadow-sm">
          <div class="card-body p-4">
            <h3 class="mb-4 text-center">Bookshop Login</h3>

            <%-- Show error message if login failed (set from servlet) --%>
            <%
              String errorMessage = (String) request.getAttribute("errorMessage");
              if (errorMessage != null) {
            %>
              <div class="alert alert-danger" role="alert">
                <%= errorMessage %>
              </div>
            <%
              }
            %>

            <form action="LoginServlet" method="post">
              <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input
                  type="text"
                  class="form-control"
                  id="username"
                  name="username"
                  placeholder="Enter username"
                  required
                />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input
                  type="password"
                  class="form-control"
                  id="password"
                  name="password"
                  placeholder="Enter password"
                  required
                />
              </div>
              <button type="submit" class="btn btn-primary w-100">Login</button>
            </form>

            <div class="mt-3 text-center">
              <a href="register.jsp">Register here</a>
              <div class="mt-3 text-center">
              
			</div>	
		 </div>
        </div>
      </div>
    </div>
  </div>
</div>

  <!-- Bootstrap 5 JS Bundle CDN -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
