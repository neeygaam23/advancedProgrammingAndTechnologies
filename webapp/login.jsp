<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Nexora</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f172a 0%, #1e3a8a 50%, #3b82f6 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 20% 50%, rgba(59, 130, 246, 0.15) 0%, transparent 50%),
                        radial-gradient(circle at 80% 80%, rgba(30, 58, 138, 0.15) 0%, transparent 50%);
            pointer-events: none;
        }

        .login-container {
            background: white;
            padding: 45px;
            border-radius: 12px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3),
                        0 0 40px rgba(59, 130, 246, 0.1);
            width: 100%;
            max-width: 420px;
            position: relative;
            z-index: 1;
            border: 1px solid #e0e7ff;
        }

        .logo {
            text-align: center;
            margin-bottom: 35px;
        }

        .logo h1 {
            color: #1e3a8a;
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.5px;
            margin-bottom: 8px;
        }

        .logo p {
            color: #64748b;
            font-size: 13px;
            font-weight: 500;
        }

        .form-group {
            margin-bottom: 22px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #1f2937;
            font-weight: 600;
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 14px;
            border: 2px solid #e5e7eb;
            border-radius: 8px;
            font-size: 14px;
            transition: all 0.3s ease;
            background: #f9fafb;
            color: #111827;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #3b82f6;
            background: white;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .btn-login {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(30, 58, 138, 0.3);
            margin-top: 8px;
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(30, 58, 138, 0.4);
        }

        .btn-login:active {
            transform: translateY(0);
        }

        .links {
            text-align: center;
            margin-top: 25px;
            font-size: 14px;
        }

        .links span {
            color: #6b7280;
        }

        .links a {
            color: #1e3a8a;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.2s ease;
        }

        .links a:hover {
            color: #3b82f6;
        }

        .alert {
            padding: 13px 15px;
            margin-bottom: 22px;
            border-radius: 8px;
            font-size: 14px;
            border-left: 4px solid;
            animation: slideIn 0.3s ease;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .alert-error {
            background-color: #fef2f2;
            color: #991b1b;
            border-left-color: #dc2626;
        }

        .alert-success {
            background-color: #f0fdf4;
            color: #166534;
            border-left-color: #22c55e;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="logo">
            <h1>NEXORA</h1>
            <p>Community Learning Platform</p>
        </div>

        <% 
            String error = (String) request.getAttribute("error");
            String success = (String) request.getAttribute("success");
        %>

        <% if (error != null) { %>
            <div class="alert alert-error">
                <%= error %>
            </div>
        <% } %>

        <% if (success != null) { %>
            <div class="alert alert-success">
                <%= success %>
            </div>
        <% } %>

        <form method="POST" action="<%= request.getContextPath() %>/login">
            <div class="form-group">
                <label for="username">Username or Email</label>
                <input type="text" id="username" name="username" placeholder="Enter your username or email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <button type="submit" class="btn-login">Sign In</button>
        </form>

        <div class="links">
            <span>Don't have an account?</span> <a href="<%= request.getContextPath() %>/register">Create one</a>
        </div>
    </div>
</body>
</html>
