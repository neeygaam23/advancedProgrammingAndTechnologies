<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Dashboard | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
</head>
<body>
<div class="dash-layout">
    <!-- SIDEBAR -->
    <jsp:include page="/components/member-sidebar.jsp">
        <jsp:param name="page" value="home" />
    </jsp:include>

    <!-- MAIN AREA -->
    <main class="dash-main">
        <!-- TOPBAR -->
        <jsp:include page="/components/dash-topbar.jsp" />

        <!-- DASHBOARD CONTENT -->
        <div class="dash-content" id="dash-content-area">
            <div class="welcome-banner">
                <h2>Welcome to Member Dashboard! 👋</h2>
                <p>Explore courses, join communities, and grow your skills.</p>
            </div>

            <div class="stat-cards">
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap">📚</div>
                        <div class="stat-change up">↑ 5%</div>
                    </div>
                    <div class="stat-num">8</div>
                    <div class="stat-lbl">Courses Enrolled</div>
                </div>

                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap">👥</div>
                        <div class="stat-change up">↑ 12%</div>
                    </div>
                    <div class="stat-num">12</div>
                    <div class="stat-lbl">Communities Joined</div>
                </div>

                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap">⭐</div>
                    </div>
                    <div class="stat-num">4.8</div>
                    <div class="stat-lbl">Average Rating</div>
                </div>

                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap">🏆</div>
                    </div>
                    <div class="stat-num">23</div>
                    <div class="stat-lbl">Achievements</div>
                </div>
            </div>
        </div>
    </main>
</div>

<!-- FOOTER -->
<jsp:include page="/components/footer.jsp" />

</body>
</html>
