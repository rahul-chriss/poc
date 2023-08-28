<!DOCTYPE html>
<html>
<head>
  <title>Datakart Login</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="dash.html">
  <link rel="stylesheet" href="dash.css">
</head>
<body>
  <div class="page-container">
    <div class="container">
      <div class="logo">
        <img src="https://www.gs1india.org/wp-content/uploads/2022/06/logo-600x402-1-600x402.png" alt="DataKart">
      </div>

      <div class="login-container">
        <div class="login-form">
          <div class="login-heading">
            DataKart Login
          </div>
          <form onsubmit="return validateLogin()" method="post">
            <div class="form-group">
              <label for="userRole"></label>
              <select id="userRole" name="userRole" required>
                <option value="manufacturer">Manufacturer</option>
                <option value="wholesaler">Wholesaler</option>
                <option value="retailer">Retailer</option>
                <option value="consumer">Consumer</option>
              </select>
            </div>

            <div class="form-group">
              <label for="username">Username:</label>
              <input type="text" id="username" name="username" required>
            </div>

            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" id="password" name="password" required>
            </div>

            <button type="submit">Login</button>
          </form>
          <div class="forgot-password">
            <button type="button" onclick="forgotPassword()">Forgot Password</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    const users = {
      manufacturer: { username: "manufactureruser", password: "manufacturerpassword" },
      wholesaler: { username: "wholesaleruser", password: "wholesalerpassword" },
      retailer: { username: "retaileruser", password: "retailerpassword" },
      consumer: { username: "consumeruser", password: "consumerpassword" }
    };

    function validateLogin() {
      const inputUsername = document.getElementById("username").value;
      const inputUserRole = document.getElementById("userRole").value;
      const inputPassword = document.getElementById("password").value;

      if (users[inputUserRole] && inputPassword === users[inputUserRole].password) {
        alert("Login successful. Redirecting...");
        // Redirect to dash.html after successful login
        window.location.href = "dash.html";
        return false; // Prevent the form from submitting (since we're manually redirecting)
      } else {
        alert("Invalid user role or password.");
        return false;
      }
    }

    function forgotPassword() {
      alert("Forgot Password functionality coming soon!");
    }
  </script>
</body>
</html>
