<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Nexora</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:opsz,wght@9..40,300;9..40,400;9..40,500;9..40,600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
</head>


<body>

    <% String memberName=(String) session.getAttribute("memberName"); if (memberName==null) memberName="Nishan Rai" ;
        String initials=(String) session.getAttribute("initials"); if (initials==null) initials="MU" ; %>

        <div class="dash-layout">

            <%-- SIDEBAR --%>
                <jsp:include page="/components/member-sidebar.jsp">
                    <jsp:param name="page" value="home" />
                </jsp:include>
        </div>

        <main class="dash-main">
            <%-- TOPBAR --%>
        <header class="dash-topbar">
            <div class="page-title">Dashboard Home</div>
            <div class="dash-search">
                <span class="dash-search-icon">&#128269;</span>
                <input type="text" placeholder="Search communities, courses...">
            </div>
            <div class="topbar-icons">
                <div class="icon-btn">
                    &#128276;
                    <div class="notif-dot"></div>
                </div>
                <div class="icon-btn">&#9881;</div>
            </div>
            <div class="topbar-avatar" style="background: var(--p);"><%= initials %></div>
        </header>
        
        <%-- CONTENT --%>
        <div class="dash-content">

            <%-- WELCOME BANNER --%>
            <div class="member-welcome-banner">
                <div class="welcome-text">
                    <h2>Welcome back, <%= memberName %>! &#128075;</h2>
                    <p>You have 3 courses in progress and 2 new community posts waiting for you.</p>
                    <div class="welcome-actions">
                        <a href="${pageContext.request.contextPath}/user/view/browse-communities.jsp" class="btn btn-white">
                            Explore Communities
                        </a>
                        <a href="${pageContext.request.contextPath}/user/view/my-enrolments.jsp" class="btn btn-white-outline">
                            My Courses
                        </a>
                    </div>
                </div>
                <div class="welcome-illustration">&#127891;</div>
            </div>
            

        </main>

</body>

</html>