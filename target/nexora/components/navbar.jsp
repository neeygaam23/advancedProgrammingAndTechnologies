<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="top-nav" id="main-nav">
    <a class="nav-logo" href="${pageContext.request.contextPath}/index.jsp">
        <div class="logo-mark"><svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/></svg></div>
        <span>Nexora</span>
    </a>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/index.jsp" class="active">Home</a>
        <a href="${pageContext.request.contextPath}/user/explore-communities.jsp">Communities</a>
        <a href="#">Courses</a>
        <a href="#">Features</a>
        <a href="#">Pricing</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </div>
    <div class="nav-search">
        <span class="nav-search-icon">🔍</span>
        <input type="text" placeholder="Search communities, courses...">
    </div>
    <div class="nav-actions">
        <a href="${pageContext.request.contextPath}/auth/login.jsp" class="btn btn-ghost">Log In</a>
        <a href="${pageContext.request.contextPath}/auth/register.jsp" class="btn btn-outline">Register</a>
        <a href="${pageContext.request.contextPath}/user/creator-dashboard.jsp" class="btn btn-primary">Creator Dashboard</a>
    </div>
</nav>
