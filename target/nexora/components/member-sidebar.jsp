<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String currentPage = request.getParameter("page");
    if (currentPage == null) currentPage = "home";
    String memberName = (String) session.getAttribute("memberName");
    if (memberName == null) memberName = "Nishan Rai";
    String initials = (String) session.getAttribute("initials");
    if (initials == null) initials = "NR";
%>
<aside class="m-sidebar">

    <%-- LOGO --%>
    <div class="msb-logo">
        <div class="msb-mark">
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <path d="M12 2L2 7l10 5 10-5-10-5z"/>
                <path d="M2 17l10 5 10-5"/>
                <path d="M2 12l10 5 10-5"/>
            </svg>
        </div>
        <span class="msb-brand">Nexora</span>
    </div>

    <%-- NAVIGATION --%>
    <nav class="msb-nav">

        <div class="msb-section-label">Overview</div>
        <a href="${pageContext.request.contextPath}/user/view/member-dashboard.jsp"
           class="msb-item <%= currentPage.equals("home") ? "active" : "" %>">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/>
                    <rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/>
                </svg>
            </span>
            <span class="msb-label">Dashboard Home</span>
        </a>

        <div class="msb-section-label">Communities</div>
        <a href="${pageContext.request.contextPath}/user/view/browse-communities.jsp"
           class="msb-item <%= currentPage.equals("browse") ? "active" : "" %>">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="11" cy="11" r="8"/><path d="M21 21l-4.35-4.35"/>
                </svg>
            </span>
            <span class="msb-label">Browse Communities</span>
        </a>
        <a href="${pageContext.request.contextPath}/user/view/browse-communities.jsp#joined"
           class="msb-item <%= currentPage.equals("mycommunities") ? "active" : "" %>">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/>
                    <circle cx="9" cy="7" r="4"/>
                    <path d="M23 21v-2a4 4 0 0 0-3-3.87"/>
                    <path d="M16 3.13a4 4 0 0 1 0 7.75"/>
                </svg>
            </span>
            <span class="msb-label">My Communities</span>
        </a>

        <div class="msb-section-label">Learning</div>
        <a href="${pageContext.request.contextPath}/user/view/my-enrolments.jsp"
           class="msb-item <%= currentPage.equals("enrolments") ? "active" : "" %>">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/>
                    <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/>
                </svg>
            </span>
            <span class="msb-label">My Enrolments</span>
            <span class="msb-badge">3</span>
        </a>
        <a href="${pageContext.request.contextPath}/user/view/my-enrolments.jsp#wishlist"
           class="msb-item <%= currentPage.equals("wishlist") ? "active" : "" %>">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/>
                </svg>
            </span>
            <span class="msb-label">Wishlist</span>
        </a>

        <div class="msb-section-label">Account</div>
        <a href="${pageContext.request.contextPath}/user/view/my-profile.jsp"
           class="msb-item <%= currentPage.equals("profile") ? "active" : "" %>">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
                    <circle cx="12" cy="7" r="4"/>
                </svg>
            </span>
            <span class="msb-label">My Profile</span>
        </a>

    </nav>

    <%-- FOOTER: USER + LOGOUT --%>
    <div class="msb-footer">
        <div class="msb-user-row">
            <div class="msb-avatar"><%= initials %></div>
            <div class="msb-user-info">
                <div class="msb-user-name"><%= memberName %></div>
                <div class="msb-user-role">Member</div>
            </div>
            <div class="msb-dots">⋮</div>
        </div>
        <a href="${pageContext.request.contextPath}/LogoutServlet" class="msb-item msb-logout">
            <span class="msb-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"/>
                    <polyline points="16 17 21 12 16 7"/>
                    <line x1="21" y1="12" x2="9" y2="12"/>
                </svg>
            </span>
            <span class="msb-label">Logout</span>
        </a>
    </div>

</aside>
