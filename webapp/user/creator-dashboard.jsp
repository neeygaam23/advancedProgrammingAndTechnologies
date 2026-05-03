<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<% String creatorName=(String) session.getAttribute("creatorName"); String initials=(String)
        session.getAttribute("initials"); if (creatorName==null) creatorName="Creator" ; if (initials==null)
    initials="C" ; String pageName=request.getParameter("page"); if (pageName==null) pageName="home" ; String
        success=(String) request.getAttribute("success"); String error=(String) request.getAttribute("error"); %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creator Dashboard | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Syne:wght@600;700;800&display=swap"
            rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #3b49df;
            /* Nexora Blue from Logo */
            --primary-light: #eef2ff;
            --bg-main: #f8faff;
            --bg-sidebar: #e8ebf7;
            --bg-card: #ffffff;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --success: #10b981;
            --error: #ef4444;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'DM Sans', sans-serif;
        }

        body {
            background-color: var(--bg-main);
            color: var(--text-main);
            overflow-x: hidden;
        }

        h1,
        h2,
        h3,
        .brand {
            font-family: 'Syne', sans-serif;
            font-weight: 700;
        }

        /* Top Header */
        .top-header {
            background: white;
            padding: 0.75rem 2rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header-left {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .brand {
            font-size: 2rem;
            color: #3b49df;
            letter-spacing: -1.5px;
        }

        .divider {
            width: 3px;
            height: 35px;
            background-color: #cbd5e1;
        }

        .dashboard-title {
            font-size: 1.25rem;
            font-weight: 500;
            color: #334155;
        }

        .search-container {
            flex: 1;
            max-width: 400px;
            margin: 0 2rem;
        }

        .search-input {
            width: 100%;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            border: 1px solid #cbd5e1;
            outline: none;
            background: #fff;
        }

        .user-profile {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            cursor: pointer;
            font-weight: 500;
        }

        /* Layout */
        .dashboard-container {
            display: flex;
            min-height: calc(100vh - 65px);
        }

        /* Sidebar */
        .sidebar {
            width: 280px;
            background-color: var(--bg-sidebar);
            padding: 2rem 1.5rem;
            display: flex;
            flex-direction: column;
            gap: 0.75rem;
        }

        .nav-link {
            display: flex;
            align-items: center;
            padding: 1rem 1.5rem;
            text-decoration: none;
            color: #1e293b;
            font-weight: 700;
            border-radius: 12px;
            transition: all 0.2s;
            text-align: center;
            justify-content: center;
            background: transparent;
            font-size: 1rem;
        }

        .nav-link:hover {
            background: rgba(255, 255, 255, 0.5);
        }

        .nav-link.active {
            background: #ffffff;
            box-shadow: var(--shadow);
        }

        /* Main Content */
        .main-content {
            flex: 1;
            padding: 2.5rem;
        }

        .welcome-section {
            margin-bottom: 2.5rem;
        }

        .welcome-section h1 {
            font-size: 2.25rem;
            margin-bottom: 0.5rem;
        }

        .welcome-section p {
            color: var(--text-muted);
            font-size: 1.1rem;
        }

        /* Stats Row */
        .stats-row {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1.5rem;
            margin-bottom: 3rem;
        }

        .stat-box {
            background: white;
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 1.5rem;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.02);
        }

        .stat-label {
            font-weight: 700;
            color: #1e293b;
            margin-bottom: 0.5rem;
            font-size: 1rem;
        }

        .stat-value {
            font-size: 1.5rem;
            font-weight: 700;
            color: #1e293b;
        }

        /* Activity Grid */
        .activity-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 2rem;
        }

        .quick-activity-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow);
        }

        .quick-activity-card h3 {
            font-size: 1.5rem;
            margin-bottom: 2rem;
        }

        .action-boxes {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1rem;
        }

        .action-box {
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 2rem 1rem;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            cursor: pointer;
            transition: transform 0.2s;
            font-weight: 700;
            color: #1e293b;
            font-size: 0.9rem;
            min-height: 150px;
        }

        .action-box:hover {
            transform: translateY(-5px);
            border-color: var(--primary);
        }

        .recent-activity-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow);
        }

        .recent-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
        }

        .view-all {
            color: var(--primary);
            text-decoration: none;
            font-size: 0.85rem;
            font-weight: 500;
        }

        .activity-item {
            display: flex;
            justify-content: space-between;
            padding: 1rem 0;
            border-bottom: 1px solid #f1f5f9;
        }

        .activity-item:last-child {
            border-bottom: none;
        }

        .activity-text {
            font-size: 0.9rem;
            color: #334155;
        }

        .activity-time {
            font-size: 0.85rem;
            color: var(--text-muted);
        }

        /* Buttons & Forms */
        .btn {
            padding: 0.75rem 1.5rem;
            border-radius: 12px;
            font-weight: 600;
            cursor: pointer;
            border: none;
            transition: all 0.2s;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            opacity: 0.9;
        }

        @media (max-width: 1024px) {
            .stats-row {
                grid-template-columns: 1fr 1fr;
            }

            .activity-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<!-- Top Header -->
<header class="top-header">
    <div class="header-left">
        <span class="brand">Nexora</span>
        <div class="divider"></div>
        <span class="dashboard-title">Creator Dashboard</span>
    </div>

    <div class="search-container">
        <input type="text" class="search-input" placeholder="Search...">
    </div>

    <div class="user-profile">
                        <span>
                            <%= creatorName %>
                        </span>
        <i class="fas fa-chevron-down"></i>
    </div>
</header>

<div class="dashboard-container">
    <!-- Sidebar -->
    <aside class="sidebar">
        <a href="creator-dashboard?page=home" class="nav-link <%= pageName.equals(" home") ? "active"
                            : "" %>">
            Dashboard Home
        </a>
        <a href="creator-dashboard?page=community-edit" class="nav-link <%= pageName.equals("community-edit") ? "active" : "" %>">
            Create/Edit Community
        </a>
        <a href="creator-dashboard?page=community-manage" class="nav-link <%= pageName.equals("community-manage") ? "active" : "" %>">
            Manage Community
        </a>
        <a href="creator-dashboard?page=course-edit" class="nav-link <%= pageName.equals(" course-edit")
                            ? "active" : "" %>">
            Create/Edit Course
        </a>
        <a href="creator-dashboard?page=courses" class="nav-link <%= pageName.equals(" courses")
                            ? "active" : "" %>">
            Manage Course
        </a>
        <a href="creator-dashboard?page=posts" class="nav-link <%= pageName.equals(" posts") ? "active"
                            : "" %>">
            Community Post<br>& Discussions
        </a>
        <a href="creator-dashboard?page=requests" class="nav-link <%= pageName.equals(" requests")
                            ? "active" : "" %>">
            Member Requests
        </a>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
        <div id="page-content">
            <% if (pageName.equals("home")) { %>
            <div class="welcome-section">
                <h1>Welcome back, <%= creatorName %>!</h1>
                <p>Manage your communities, courses, and engage with your members</p>
            </div>

            <div class="stats-row">
                <div class="stat-box">
                    <div class="stat-label">Total Communities</div>
                    <div class="stat-value">12</div>
                </div>
                <div class="stat-box">
                    <div class="stat-label">Total Course</div>
                    <div class="stat-value">8</div>
                </div>
                <div class="stat-box">
                    <div class="stat-label">Total Members</div>
                    <div class="stat-value">230</div>
                </div>
                <div class="stat-box">
                    <div class="stat-label">Pending Requests</div>
                    <div class="stat-value">7</div>
                </div>
            </div>

            <div class="activity-grid">
                <div class="quick-activity-card">
                    <h3>Quick Activity</h3>
                    <div class="action-boxes">
                        <div class="action-box"
                             onclick="location.href='creator-dashboard?page=community-edit'">
                            <span>Create<br>Community</span>
                        </div>
                        <div class="action-box"
                             onclick="location.href='creator-dashboard?page=course-edit'">
                            <span>Create<br>Course</span>
                        </div>
                        <div class="action-box"
                             onclick="location.href='creator-dashboard?page=courses'">
                            <span>Manage<br>Courses</span>
                        </div>
                        <div class="action-box"
                             onclick="location.href='creator-dashboard?page=posts'">
                            <span>View<br>Posts</span>
                        </div>
                    </div>
                </div>

                <div class="recent-activity-card">
                    <div class="recent-header">
                        <h3>Recent Activity</h3>
                        <a href="#" class="view-all">View all</a>
                    </div>
                    <div class="activity-list">
                        <div class="activity-item">
                            <span class="activity-text">New member joined</span>
                            <span class="activity-time">2 h ago</span>
                        </div>
                        <div class="activity-item">
                            <span class="activity-text">New course published</span>
                            <span class="activity-time">5h ago</span>
                        </div>
                        <div class="activity-item">
                            <span class="activity-text">Course enrollment</span>
                            <span class="activity-time">1d ago</span>
                        </div>
                        <div class="activity-item">
                            <span class="activity-text">New community created</span>
                            <span class="activity-time">2d ago</span>
                        </div>
                    </div>
                </div>
            </div>

            <% } else if (pageName.equals("community-edit")) { %>
            <!-- Forms and other pages will adapt to the light theme globally via CSS -->
            <div class="welcome-section">
                <h1>Create/Edit Community</h1>
            </div>
            <div class="quick-activity-card" style="max-width: 800px;">
                <!-- Implementation of community form here (reusing previous logic but with new styling) -->
                <p style="color: var(--text-muted);">Form styling has been updated to match the
                    new light theme.</p>
            </div>
            <% } %>
        </div>
    </main>
</div>

</body>

</html>