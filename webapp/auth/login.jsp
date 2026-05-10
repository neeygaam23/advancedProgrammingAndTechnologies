<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div id="login" class="page active">
    <div class="auth-wrapper">
        <div class="auth-brand">
            <div class="auth-brand-content">
                <a href="${pageContext.request.contextPath}/index.jsp" class="nav-logo" style="justify-content:center;margin-bottom:.5rem;text-decoration:none">
                    <div class="logo-mark"><svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" fill="#fff"/></svg></div>
                    <span style="color:#fff">Nexora</span>
                </a>
                <h2>Welcome back!</h2>
                <p>Your communities and learners are waiting. Sign in to continue building amazing experiences.</p>
                <div class="auth-illustration" style="margin-top:2rem">
                    <div style="text-align:center;color:rgba(255,255,255,.8)">
                        <div style="font-size:3rem;margin-bottom:.5rem">🎓</div>
                        <div style="font-size:.875rem;font-weight:500">50,000+ creators trust Nexora</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="auth-form-side">
            <div class="auth-form-inner">
                <h1>Sign In</h1>
                <p class="sub">Don't have an account? <a href="${pageContext.request.contextPath}/register.jsp" class="auth-redirect" style="color:var(--accent);cursor:pointer;text-decoration:none">Create one free</a></p>
                <form action="AuthServlet" method="POST">
                    <input type="hidden" name="action" value="login">
                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <input class="form-input" type="email" name="email" placeholder="you@example.com" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Password<a href="#" class="forgot-link">Forgot password?</a></label>
                        <input class="form-input" type="password" name="password" placeholder="••••••••" required>
                    </div>
                    <div class="checkbox-row" style="margin-bottom:1.25rem">
                        <input type="checkbox" id="remember" name="remember"> <label for="remember">Remember me for 30 days</label>
                    </div>
                    <button type="submit" class="btn btn-primary" style="width:100%;justify-content:center;padding:.7rem">Sign In →</button>
                </form>
                <div class="divider">or continue with</div>
                <div style="display:grid;grid-template-columns:1fr 1fr;gap:.75rem;margin-bottom:1.25rem">
                    <button class="btn btn-ghost" style="justify-content:center;gap:.5rem">🔵 Google</button>
                    <button class="btn btn-ghost" style="justify-content:center;gap:.5rem">⬛ GitHub</button>
                </div>
                <p class="auth-redirect">Don't have an account? <a href="${pageContext.request.contextPath}/register.jsp" style="color:var(--accent);text-decoration:none">Register free</a></p>
                <p style="margin-top:.75rem;text-align:center"><a href="${pageContext.request.contextPath}/index.jsp" style="font-size:.8125rem;color:var(--text-muted);cursor:pointer;text-decoration:none">← Back to home</a></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
