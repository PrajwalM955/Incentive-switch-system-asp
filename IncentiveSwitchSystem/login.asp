<!DOCTYPE html>
<html>
<head>
    <title>Incentive Switch Login</title>
    <link rel="stylesheet" href="styles/main.css"> <!-- Optional external CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            text-align: center;
            padding-top: 100px;
        }
        .login-box {
            background: #fff;
            border: 1px solid #ccc;
            padding: 30px;
            width: 300px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        input[type="text"], input[type="password"] {
            width: 90%;
            padding: 8px;
            margin: 10px 0;
        }
        input[type="submit"] {
            padding: 8px 20px;
        }
        a {
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Login</h2>
        <form method="post" action="login_validate.asp">
            <label>Employee ID</label><br>
            <input type="text" name="empid" required><br>
            <label>Password</label><br>
            <input type="password" name="password" required><br><br>
            <input type="submit" value="Login">
        </form>
        <a href="register.asp">Register here</a>
    </div>
</body>
</html>
