<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script>
        function selectRole(element) {
            document.querySelectorAll('.role-option').forEach(el => el.classList.remove('selected'));
            element.classList.add('selected');
            document.getElementById('roleInput').value = element.getAttribute('data-role');
        }

        function updateStrength(input) {
            const val = input.value;
            const bars = document.querySelectorAll('.pw-bar');
            const label = document.getElementById('pw-label');
            bars.forEach(b => b.className = 'pw-bar');

            if (!val) {
                label.textContent = "Enter a password";
                return;
            }

            let strength = 0;
            if (val.length >= 8) strength++;
            if (/[A-Z]/.test(val)) strength++;
            if (/[0-9]/.test(val)) strength++;
            if (/[^A-Za-z0-9]/.test(val)) strength++;

            if (strength <= 1) {
                bars[0].classList.add('weak');
                label.textContent = "Weak";
            } else if (strength === 2 || strength === 3) {
                bars[0].classList.add('medium');
                bars[1].classList.add('medium');
                label.textContent = "Medium";
            } else {
                bars.forEach(b => b.classList.add('strong'));
                label.textContent = "Strong";
            }
        }
    </script>
</head>
<body>
<div id="register" class="page active">
    <div class="auth-wrapper">
        <div class="auth-brand" style="background:linear-gradient(135deg,#10B981 0%,#6C63FF 100%)">
            <div class="auth-brand-content">
                <a href="${pageContext.request.contextPath}/index.jsp" class="nav-logo" style="justify-content:center;margin-bottom:.5rem;text-decoration:none">
                    <div class="logo-mark"><svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" fill="#fff"/></svg></div>
                    <span style="color:#fff">Nexora</span>
                </a>
                <h2>Join Nexora today</h2>
                <p>Start your learning journey or launch your first community. It's completely free to begin.</p>
                <div style="margin-top:2rem;display:flex;flex-direction:column;gap:.75rem">
                    <div style="display:flex;align-items:center;gap:.75rem;color:rgba(255,255,255,.9);font-size:.9rem"><span>✅</span> Free forever plan available</div>
                    <div style="display:flex;align-items:center;gap:.75rem;color:rgba(255,255,255,.9);font-size:.9rem"><span>✅</span> No credit card required</div>
                    <div style="display:flex;align-items:center;gap:.75rem;color:rgba(255,255,255,.9);font-size:.9rem"><span>✅</span> Set up in under 5 minutes</div>
                </div>
            </div>
        </div>
        <div class="auth-form-side" style="overflow-y:auto">
            <div class="auth-form-inner" style="padding:2rem 0">
                <h1>Create Account</h1>
                <p class="sub">Already have an account? <a href="${pageContext.request.contextPath}/login.jsp" style="color:var(--accent);cursor:pointer;text-decoration:none">Sign in</a></p>
                <form action="AuthServlet" method="POST">
                    <input type="hidden" name="action" value="register">
                    <input type="hidden" id="roleInput" name="role" value="student">
                    <div style="margin-bottom:1.25rem">
                        <label class="form-label">I am joining as a...</label>
                        <div class="role-select">
                            <div class="role-option selected" data-role="student" onclick="selectRole(this)"><span class="role-icon">🎓</span><span>Student</span><div style="font-size:.75rem;color:var(--text-muted);margin-top:.2rem">Learn from creators</div></div>
                            <div class="role-option" data-role="creator" onclick="selectRole(this)"><span class="role-icon">🚀</span><span>Creator</span><div style="font-size:.75rem;color:var(--text-muted);margin-top:.2rem">Build communities</div></div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group"><label class="form-label">First Name</label><input class="form-input" name="firstName" placeholder="John" required></div>
                        <div class="form-group"><label class="form-label">Last Name</label><input class="form-input" name="lastName" placeholder="Doe" required></div>
                    </div>
                    <div class="form-group"><label class="form-label">Email</label><input class="form-input" type="email" name="email" placeholder="you@example.com" required></div>
                    <div class="form-group">
                        <label class="form-label">Password</label>
                        <input class="form-input" type="password" name="password" placeholder="Min. 8 characters" oninput="updateStrength(this)" required>
                        <div class="password-strength" style="margin-top:.4rem" id="pw-strength">
                            <div class="pw-bar"></div><div class="pw-bar"></div><div class="pw-bar"></div><div class="pw-bar"></div>
                        </div>
                        <div style="font-size:.7rem;color:var(--text-muted);margin-top:.2rem" id="pw-label">Enter a password</div>
                    </div>
                    <div class="form-group"><label class="form-label">Confirm Password</label><input class="form-input" type="password" name="confirmPassword" placeholder="Repeat password" required></div>
                    <div class="checkbox-row" style="margin-bottom:1.25rem">
                        <input type="checkbox" id="terms" required><label for="terms">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
                    </div>
                    <button type="submit" class="btn btn-primary" style="width:100%;justify-content:center;padding:.7rem">Create Account →</button>
                </form>
                <p style="margin-top:.75rem;text-align:center"><a href="${pageContext.request.contextPath}/index.jsp" style="font-size:.8125rem;color:var(--text-muted);cursor:pointer;text-decoration:none">← Back to home</a></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
