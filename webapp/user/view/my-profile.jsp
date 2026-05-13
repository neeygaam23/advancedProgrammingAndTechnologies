<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
</head>
<body>
<div class="dash-layout">
    <!-- SIDEBAR -->
    <jsp:include page="/components/member-sidebar.jsp">
        <jsp:param name="page" value="profile" />
    </jsp:include>

    <!-- MAIN AREA -->
    <main class="dash-main">
        <!-- TOPBAR -->
        <jsp:include page="/components/dash-topbar.jsp" />

        <!-- DASHBOARD CONTENT -->
        <div class="dash-content" id="dash-content-area">
            <div class="page-header">
                <h2>My Profile</h2>
                <p>Manage your profile information and settings</p>
            </div>

            <div class="profile-section">
                <div class="profile-header">
                    <div class="profile-avatar">
                        <% 
                            String memberName = (String) session.getAttribute("memberName");
                            String initials = (String) session.getAttribute("initials");
                            if (memberName == null) memberName = "Member User";
                            if (initials == null) initials = "MU";
                        %>
                        <%= initials %>
                    </div>
                    <div class="profile-info">
                        <h3><%= memberName %></h3>
                        <p>Member since 2024</p>
                    </div>
                    <button class="btn btn-primary">Edit Profile</button>
                </div>
            </div>

            <div class="profile-details">
                <div class="detail-section">
                    <h4>Basic Information</h4>
                    <div class="detail-grid">
                        <div class="detail-item">
                            <label>Email</label>
                            <p>member@example.com</p>
                        </div>
                        <div class="detail-item">
                            <label>Phone</label>
                            <p>+977 98XXXXXXXX</p>
                        </div>
                        <div class="detail-item">
                            <label>Location</label>
                            <p>Kathmandu, Nepal</p>
                        </div>
                        <div class="detail-item">
                            <label>Member Since</label>
                            <p>January 15, 2024</p>
                        </div>
                    </div>
                </div>

                <div class="detail-section">
                    <h4>Account Settings</h4>
                    <div class="settings-list">
                        <div class="setting-item">
                            <span>Email Notifications</span>
                            <input type="checkbox" checked>
                        </div>
                        <div class="setting-item">
                            <span>Course Recommendations</span>
                            <input type="checkbox" checked>
                        </div>
                        <div class="setting-item">
                            <span>Community Updates</span>
                            <input type="checkbox">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

<!-- FOOTER -->
<jsp:include page="/components/footer.jsp" />

</body>
</html>
