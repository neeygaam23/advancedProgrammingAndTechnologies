<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:opsz,wght@9..40,300;9..40,400;9..40,500;9..40,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css">
</head>
<body>
<%
    String memberName = (String) session.getAttribute("memberName");
    if (memberName == null) memberName = "Alex Johnson";
    String initials = (String) session.getAttribute("initials");
    if (initials == null) initials = "AJ";
%>

<div class="dash-layout">

    <%-- SIDEBAR --%>
    <jsp:include page="/components/member-sidebar.jsp">
        <jsp:param name="page" value="home"/>
    </jsp:include>

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

            <%-- STAT CARDS --%>
            <div class="stat-cards">
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background: #E0F2FE;">&#127968;</div>
                        <span class="stat-change up">&#8593; 2 this week</span>
                    </div>
                    <div class="stat-num">5</div>
                    <div class="stat-lbl">Communities Joined</div>
                </div>
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background: #FEF9C3;">&#128218;</div>
                        <span class="stat-change up">&#8593; 1 new</span>
                    </div>
                    <div class="stat-num">8</div>
                    <div class="stat-lbl">Courses Enrolled</div>
                </div>
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background: #DCFCE7;">&#9989;</div>
                        <span class="stat-change up">&#8593; 1 this month</span>
                    </div>
                    <div class="stat-num">3</div>
                    <div class="stat-lbl">Courses Completed</div>
                </div>
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background: #EDE9FE;">&#128172;</div>
                        <span class="stat-change up">&#8593; 12 total</span>
                    </div>
                    <div class="stat-num">47</div>
                    <div class="stat-lbl">Posts &amp; Replies</div>
                </div>
            </div>

            <%-- MAIN GRID --%>
            <div class="dash-grid">

                <%-- COURSES IN PROGRESS --%>
                <div class="panel">
                    <div class="panel-header">
                        <span class="panel-title">&#128214; Courses In Progress</span>
                           class="btn btn-ghost btn-sm">View All</a>
                    </div>
                    <div class="panel-body">

                        <div class="course-progress-item">
                            <div class="cpi-icon" style="background: #043873;">&#127760;</div>
                            <div class="cpi-info">
                                <div class="cpi-title">Web Development Fundamentals</div>
                                <div class="cpi-community">by TechHub Community</div>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" style="width: 68%;"></div>
                                </div>
                                <div class="cpi-meta">68% complete &middot; 4 lessons left</div>
                            </div>
                               class="btn btn-primary btn-sm">Continue</a>
                        </div>

                        <div class="course-progress-item">
                            <div class="cpi-icon" style="background: #7C3AED;">&#127912;</div>
                            <div class="cpi-info">
                                <div class="cpi-title">UI/UX Design Essentials</div>
                                <div class="cpi-community">by DesignPro Community</div>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" style="width: 35%;"></div>
                                </div>
                                <div class="cpi-meta">35% complete &middot; 9 lessons left</div>
                            </div>
                               class="btn btn-primary btn-sm">Continue</a>
                        </div>

                        <div class="course-progress-item">
                            <div class="cpi-icon" style="background: #0F766E;">&#128202;</div>
                            <div class="cpi-info">
                                <div class="cpi-title">Data Science Basics</div>
                                <div class="cpi-community">by DataLearn Community</div>
                                <div class="progress-bar-wrap">
                                    <div class="progress-bar" style="width: 12%;"></div>
                                </div>
                                <div class="cpi-meta">12% complete &middot; 15 lessons left</div>
                            </div>
                               class="btn btn-primary btn-sm">Continue</a>
                        </div>

                    </div>
                </div>

                <%-- RIGHT COLUMN --%>
                <div style="display: flex; flex-direction: column; gap: 1.25rem;">

                    <%-- RECENT ACTIVITY --%>
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-title">&#128336; Recent Activity</span>
                        </div>
                        <div class="panel-body" style="padding: 0 1.4rem;">
                            <div class="activity-item">
                                <div class="activity-dot-wrap" style="background: #E0F2FE;">&#128172;</div>
                                <div class="activity-text">
                                    <p>You replied to a post in <strong>TechHub</strong></p>
                                    <div class="activity-time">2 hours ago</div>
                                </div>
                            </div>
                            <div class="activity-item">
                                <div class="activity-dot-wrap" style="background: #DCFCE7;">&#9989;</div>
                                <div class="activity-text">
                                    <p>Completed lesson <strong>"CSS Flexbox"</strong></p>
                                    <div class="activity-time">Yesterday</div>
                                </div>
                            </div>
                            <div class="activity-item">
                                <div class="activity-dot-wrap" style="background: #FEF9C3;">&#127968;</div>
                                <div class="activity-text">
                                    <p>Joined <strong>DataLearn Community</strong></p>
                                    <div class="activity-time">3 days ago</div>
                                </div>
                            </div>
                            <div class="activity-item">
                                <div class="activity-dot-wrap" style="background: #EDE9FE;">&#128218;</div>
                                <div class="activity-text">
                                    <p>Enrolled in <strong>Data Science Basics</strong></p>
                                    <div class="activity-time">3 days ago</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%-- MY COMMUNITIES --%>
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-title">&#127968; My Communities</span>
                               class="btn btn-ghost btn-sm">Browse</a>
                        </div>
                        <div class="panel-body" style="display: flex; flex-direction: column; gap: .85rem;">

                            <div class="mini-community-item">
                                <div class="mc-avatar" style="background: #043873;">TH</div>
                                <div class="mc-info">
                                    <div class="mc-name">TechHub</div>
                                    <div class="mc-meta">2.4k members &middot; 3 new posts</div>
                                </div>
                                   class="btn btn-ghost btn-sm" style="margin-left: auto;">View</a>
                            </div>

                            <div class="mini-community-item">
                                <div class="mc-avatar" style="background: #7C3AED;">DP</div>
                                <div class="mc-info">
                                    <div class="mc-name">DesignPro</div>
                                    <div class="mc-meta">1.1k members &middot; 1 new post</div>
                                </div>
                                   class="btn btn-ghost btn-sm" style="margin-left: auto;">View</a>
                            </div>

                            <div class="mini-community-item">
                                <div class="mc-avatar" style="background: #0F766E;">DL</div>
                                <div class="mc-info">
                                    <div class="mc-name">DataLearn</div>
                                    <div class="mc-meta">890 members &middot; 5 new posts</div>
                                </div>
                                   class="btn btn-ghost btn-sm" style="margin-left: auto;">View</a>
                            </div>

                        </div>
                    </div>

                </div>
                <%-- END RIGHT COLUMN --%>

            </div>
            <%-- END MAIN GRID --%>

        </div>
        <%-- END CONTENT --%>

    </main>
</div>

<script src="${pageContext.request.contextPath}/js/member.js"></script>
</body>
</html>
