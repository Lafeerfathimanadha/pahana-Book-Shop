<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Bookshop Register</title>
  <!-- Bootstrap 5 CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">

  <div class="container">
    <div class="row justify-content-center align-items-center vh-100">
      <div class="col-md-6">
        <div class="card shadow-sm">
          <div class="card-body p-4">
            <h3 class="mb-4 text-center">Register New Account</h3>

            <%-- Show message if set by servlet --%>
            <%
              String message = (String) request.getAttribute("message");
              String errorMessage = (String) request.getAttribute("errorMessage");
              if (message != null) {
            %>
              <div class="alert alert-success" role="alert">
                <%= message %>
              </div>
            <%
              } else if (errorMessage != null) {
            %>
              <div class="alert alert-danger" role="alert">
                <%= errorMessage %>
              </div>
            <%
              }
            %>

            <form action="RegisterServlet" method="post">
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

              <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input
                  type="email"
                  class="form-control"
                  id="email"
                  name="email"
                  placeholder="Enter email"
                  required
                />
              </div>

              <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                <input
                  type="tel"
                  class="form-control"
                  id="phone"
                  name="phone"
                  placeholder="Enter phone number"
                  pattern="[0-9]{10,15}"
                  title="Enter a valid phone number (digits only)"
                  required
                />
              </div>

              <button type="submit" class="btn btn-success w-100">Register</button>
            </form>

            <div class="mt-3 text-center">
              <a href="login.jsp">Back to Login</a>
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
