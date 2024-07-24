<%@ page import="java.sql.*" %>
<%
    // Database connection details
    String url = "jdbc:mysql://localhost:3306/shopping_cart";
    String user = "root"; // Change to your DB username
    String password = "1234"; // Change to your DB password

    Connection connection = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, user, password);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>

<%
    // Initialize variables
    String message1 = "";
    boolean loginSuccess = false;
    String message2 = "";
    boolean createSuccess = false;

    // Handle signup form submission
    if (request.getParameter("signup_username") != null) {
        String signupUsername = request.getParameter("signup_username");
        String signupEmail = request.getParameter("signup_email");
        String signupPassword = request.getParameter("signup_password");

        try {
            // Check if username or email already exists
            PreparedStatement checkStmt = connection.prepareStatement("SELECT * FROM users_details WHERE username = ? OR email = ?");
            checkStmt.setString(1, signupUsername);
            checkStmt.setString(2, signupEmail);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                // Non-unique username or email
                out.println("<script>alert('Username or Email already exists');</script>");
            } else {
                // Insert new user details
                PreparedStatement insertStmt = connection.prepareStatement("INSERT INTO users_details (username, email, password) VALUES (?, ?, ?)");
                insertStmt.setString(1, signupUsername);
                insertStmt.setString(2, signupEmail);
                insertStmt.setString(3, signupPassword);
                insertStmt.executeUpdate();
                createSuccess = true;
            }
        } catch (SQLException e) {
            out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
        }
    }

    // Handle login form submission
    if (request.getParameter("login_username") != null) {
        String loginUsername = request.getParameter("login_username");
        String loginPassword = request.getParameter("login_password");

        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM users_details WHERE username = ? AND password = ?");
            stmt.setString(1, loginUsername);
            stmt.setString(2, loginPassword);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                loginSuccess = true;
            } else {
                out.println("<script>alert('Invalid username or password');</script>");
            }
        } catch (SQLException e) {
            out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login_Signup_page</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }

        body {
            background-color: #ffffff; /* Solid color as fallback */
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url(login_background.png) no-repeat center center/cover;
            opacity: 0.5;
            z-index: -1;
            filter: blur(0.8px); /* Add slight blur to the background image */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Adjust opacity if needed */
            border-radius: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.35);
            position: relative;
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            min-height: 480px;
            margin-top: 170px; /* Adjust margin as needed */
        }

        .container p {
            font-size: 14px;
            line-height: 20px;
            letter-spacing: 0.3px;
            margin: 20px 0;
        }

        .container span {
            font-size: 12px;
        }

        .container a {
            color: #333;
            font-size: 13px;
            text-decoration: none;
            margin: 15px 0 10px;
        }

        .container button {
            background-color: #2da0a8;
            color: #fff;
            font-size: 12px;
            padding: 10px 45px;
            border: 1px solid transparent;
            border-radius: 8px;
            font-weight: 600;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            margin-top: 10px;
            cursor: pointer;
        }

        .container button.hidden {
            background-color: transparent;
            border-color: #fff;
        }

        .container form {
            background-color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 20px 40px; /* Adjust padding to move content down */
            height: 100%;
        }

        .container input {
            background-color: #eee;
            border: none;
            margin: 8px 0;
            padding: 10px 15px;
            font-size: 13px;
            border-radius: 8px;
            width: 100%;
            outline: none;
        }

        .form-container {
            position: absolute;
            top: 0;
            height: 100%;
            transition: all 0.6s ease-in-out;
        }

        .sign-in {
            left: 0;
            width: 50%;
            z-index: 2;
        }

        .container.active .sign-in {
            transform: translateX(100%);
        }

        .sign-up {
            left: 0;
            width: 50%;
            opacity: 0;
            z-index: 1;
        }

        .container.active .sign-up {
            transform: translateX(100%);
            opacity: 1;
            z-index: 5;
            animation: move 0.6s;
        }

        @keyframes move {
            0%,
            49.99% {
                opacity: 0;
                z-index: 1;
            }
            50%,
            100% {
                opacity: 1;
                z-index: 5;
            }
        }

        .social-icons {
            margin: 20px 0;
        }

        .social-icons a {
            border: 1px solid #ccc;
            border-radius: 20%;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            margin: 0 3px;
            width: 40px;
            height: 40px;
        }

        .toggle-container {
            position: absolute;
            top: 0;
            left: 50%;
            width: 50%;
            height: 100%;
            overflow: hidden;
            transition: all 0.6s ease-in-out;
            border-radius: 150px 0 0 100px;
            z-index: 1000;
        }

        .container.active .toggle-container {
            transform: translateX(-100%);
            border-radius: 0 150px 100px 0;
        }

        .toggle {
            background-color: #712d22;
            height: 100%;
            background: linear-gradient(to right, #f2ec41, #df379e);
            color: #fff;
            position: relative;
            left: -100%;
            height: 100%;
            width: 200%;
            transform: translateX(0);
            transition: all 0.6s ease-in-out;
        }

        .container.active .toggle {
            transform: translateX(50%);
        }

        .toggle-panel {
            position: absolute;
            width: 50%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 30px;
            text-align: center;
            top: 0;
            transform: translateX(0);
            transition: all 0.6s ease-in-out;
        }

        .toggle-left {
            transform: translateX(-200%);
        }

        .container.active .toggle-left {
            transform: translateX(0);
        }

        .toggle-right {
            right: 0;
            transform: translateX(0);
        }

        .container.active .toggle-right {
            transform: translateX(200%);
        }
    </style>
</head>
<body>
    <div class="container" id="container">
        <div class="form-container sign-up">
            <form onsubmit="validateSignUpForm(event)">
                <h2>Create Account</h2>
                <input type="text" name="signup_username" id="signup_username" placeholder="Username" required>
                <input type="email" name="signup_email" id="signup_email" placeholder="Email" required>
                <input type="password" name="signup_password" id="signup_password" placeholder="Password" required>
                <button type="submit">Sign Up</button>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-google"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </form>
        </div>
        <div class="form-container sign-in">
            <form onsubmit="validateLoginForm(event)">
                <h2>Sign In</h2>
                <input type="text" name="login_username" id="login_username" placeholder="Username" required>
                <input type="password" name="login_password" id="login_password" placeholder="Password" required>
                <button type="submit">Sign In</button>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-google"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h2>Welcome Back!</h2>
                    <p>To keep connected with us please login with your personal info</p>
                    <button id="signInBtn" class="hidden" onclick="toggleForms()">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h2>Hello, Friend!</h2>
                    <p>Enter your personal details and start journey with us</p>
                    <button id="signUpBtn" class="hidden" onclick="toggleForms()">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        // JavaScript function to toggle forms
        function toggleForms() {
            const container = document.getElementById('container');
            container.classList.toggle('active');
        }

        // JavaScript function to validate login form
        function validateLoginForm(event) {
            const username = document.getElementById('login_username').value;
            const password = document.getElementById('login_password').value;
            if (!username || !password) {
                event.preventDefault();
                alert('Please fill in all fields.');
            }
        }

        // JavaScript function to validate sign-up form
        function validateSignUpForm(event) {
            const username = document.getElementById('signup_username').value;
            const email = document.getElementById('signup_email').value;
            const password = document.getElementById('signup_password').value;
            if (!username || !email || !password) {
                event.preventDefault();
                alert('Please fill in all fields.');
            }
        }
    </script>
    <%
        if (loginSuccess) {
    %>
    <script>
        window.location.href = 'main_page.html';
    </script>
    <%
        }
    %>
    <%
        if (createSuccess) {
    %>
    <script>
        window.location.href = 'main_page.html';
    </script>
    <%
        }
    %>
</body>
</html>
