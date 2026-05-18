<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Enrolments | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
</head>
<body>
<div class="dash-layout">
    <!-- SIDEBAR -->
    <jsp:include page="/components/member-sidebar.jsp">
        <jsp:param name="page" value="enrolments" />
    </jsp:include>

    <!-- MAIN AREA -->
    <main class="dash-main">
        <!-- TOPBAR -->
        <jsp:include page="/components/dash-topbar.jsp" />

        <!-- DASHBOARD CONTENT -->
        <div class="dash-content" id="dash-content-area">
            <div class="page-header">
                <h2>My Enrolments</h2>
                <p>View and manage your course enrolments</p>
            </div>

            <div class="tabs-nav">
                <button class="tab-btn active" onclick="showTab('enrolments')">Active Enrolments</button>
                <button class="tab-btn" onclick="showTab('wishlist')">Wishlist</button>
                <button class="tab-btn" onclick="showTab('completed')">Completed</button>
            </div>

            <div id="enrolments" class="tab-content active">
                <div class="courses-grid">
                    <!-- Enrolments will be loaded here -->
                    <div class="loading">Loading your courses...</div>
                </div>
            </div>

            <div id="wishlist" class="tab-content">
                <div class="courses-grid">
                    <!-- Wishlist items will be loaded here -->
                    <div class="loading">Loading wishlist...</div>
                </div>
            </div>

            <div id="completed" class="tab-content">
                <div class="courses-grid">
                    <!-- Completed courses will be loaded here -->
                    <div class="loading">Loading completed courses...</div>
                </div>
            </div>
        </div>
    </main>
</div>

<!-- FOOTER -->
<jsp:include page="/components/footer.jsp" />

<script>
    function showTab(tabName) {
        const tabs = document.querySelectorAll('.tab-content');
        const btns = document.querySelectorAll('.tab-btn');
        
        tabs.forEach(tab => tab.classList.remove('active'));
        btns.forEach(btn => btn.classList.remove('active'));
        
        document.getElementById(tabName).classList.add('active');
        event.target.classList.add('active');
    }
</script>

</body>
</html>
