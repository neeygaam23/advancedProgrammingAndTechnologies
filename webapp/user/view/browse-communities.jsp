<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Browse Communities | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
</head>
<body>
<div class="dash-layout">
    <!-- SIDEBAR -->
    <jsp:include page="/components/member-sidebar.jsp">
        <jsp:param name="page" value="browse" />
    </jsp:include>

    <!-- MAIN AREA -->
    <main class="dash-main">
        <!-- TOPBAR -->
        <jsp:include page="/components/dash-topbar.jsp" />

        <!-- DASHBOARD CONTENT -->
        <div class="dash-content" id="dash-content-area">
            <div class="page-header">
                <h2>Browse Communities</h2>
                <p>Discover and join communities that match your interests</p>
            </div>

            <div class="search-filter-bar">
                <input type="text" id="searchInput" placeholder="Search communities..." class="search-input">
                <select id="filterCategory" class="filter-select">
                    <option value="">All Categories</option>
                    <option value="technology">Technology</option>
                    <option value="design">Design</option>
                    <option value="business">Business</option>
                    <option value="creative">Creative</option>
                </select>
            </div>

            <div class="communities-grid" id="communitiesGrid">
                <!-- Communities will be loaded here -->
                <div class="loading">Loading communities...</div>
            </div>
        </div>
    </main>
</div>

<!-- FOOTER -->
<jsp:include page="/components/footer.jsp" />

<script>
    // Placeholder for loading communities
    document.addEventListener('DOMContentLoaded', function() {
        console.log('Browse Communities page loaded');
    });
</script>

</body>
</html>
