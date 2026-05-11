<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String pageName = request.getParameter("page");
    if (pageName == null) pageName = "home";
    String creatorName = (String) session.getAttribute("creatorName");
    if (creatorName == null) creatorName = "Creator";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creator Dashboard | Nexora</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div class="dash-layout">
    <!-- SIDEBAR -->
    <jsp:include page="/components/dash-sidebar.jsp" />

    <!-- MAIN AREA -->
    <main class="dash-main">
        <!-- TOPBAR -->
        <jsp:include page="/components/dash-topbar.jsp" />

        <!-- DASHBOARD SECTIONS -->
        <div class="dash-content" id="dash-content-area">

            <% if (pageName.equals("home")) { %>
            <div class="welcome-banner">
                <h2>Good morning, <%= creatorName %>! 👋</h2>
                <p>You have 7 new member requests and 3 new discussion posts today.</p>
                <div class="welcome-actions">
                    <a href="?page=course-create" class="btn btn-white btn-sm" style="text-decoration:none">+ New Course</a>
                    <a href="?page=requests" class="btn btn-white-outline btn-sm" style="text-decoration:none">Review Requests</a>
                </div>
            </div>

            <div class="stat-cards">
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background:#EEF2FF;color:#6C63FF">🏘️</div>
                        <div class="stat-change up">↑ 12%</div>
                    </div>
                    <div class="stat-num">12</div>
                    <div class="stat-lbl">Total Communities</div>
                </div>
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background:#ECFDF5;color:#22C55E">📚</div>
                        <div class="stat-change up">↑ 8%</div>
                    </div>
                    <div class="stat-num">48</div>
                    <div class="stat-lbl">Total Courses</div>
                </div>
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background:#FEF3C7;color:#D97706">👥</div>
                        <div class="stat-change up">↑ 24%</div>
                    </div>
                    <div class="stat-num">3,241</div>
                    <div class="stat-lbl">Total Members</div>
                </div>
                <div class="stat-card">
                    <div class="stat-card-header">
                        <div class="stat-icon-wrap" style="background:var(--danger-bg);color:var(--danger)">⏳</div>
                        <div class="stat-change down">+7 new</div>
                    </div>
                    <div class="stat-num">7</div>
                    <div class="stat-lbl">Pending Requests</div>
                </div>
            </div>

            <div class="dash-grid">
                <div>
                    <div class="panel">
                        <div class="panel-header">
                            <span class="panel-title">Community Growth</span>
                            <select class="filter-select" style="font-size:.75rem;padding:.3rem .6rem">
                                <option>Last 7 days</option>
                                <option>Last 30 days</option>
                                <option>Last 3 months</option>
                            </select>
                        </div>
                        <div class="panel-body">
                            <div class="chart-container">
                                <div class="chart-bar" style="height:45%"></div>
                                <div class="chart-bar accent2" style="height:30%"></div>
                                <div class="chart-bar" style="height:60%"></div>
                                <div class="chart-bar accent2" style="height:45%"></div>
                                <div class="chart-bar" style="height:80%"></div>
                                <div class="chart-bar accent2" style="height:55%"></div>
                                <div class="chart-bar" style="height:70%"></div>
                                <div class="chart-bar accent2" style="height:40%"></div>
                                <div class="chart-bar" style="height:95%"></div>
                                <div class="chart-bar accent2" style="height:75%"></div>
                                <div class="chart-bar" style="height:85%"></div>
                                <div class="chart-bar accent2" style="height:100%"></div>
                                <div class="chart-bar" style="height:90%"></div>
                                <div class="chart-bar accent2" style="height:70%"></div>
                            </div>
                            <div class="chart-labels">
                                <div class="chart-label">Apr 26</div><div class="chart-label"></div>
                                <div class="chart-label">Apr 28</div><div class="chart-label"></div>
                                <div class="chart-label">Apr 30</div><div class="chart-label"></div>
                                <div class="chart-label">May 2</div><div class="chart-label"></div>
                                <div class="chart-label">May 4</div><div class="chart-label"></div>
                                <div class="chart-label">May 6</div><div class="chart-label"></div>
                                <div class="chart-label">May 8</div>
                            </div>
                            <div class="chart-legend">
                                <div class="legend-item"><div class="legend-dot" style="background:var(--accent)"></div>New Members</div>
                                <div class="legend-item"><div class="legend-dot" style="background:#8B5CF6"></div>Enrollments</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel" style="margin-top:1.5rem">
                        <div class="panel-header"><span class="panel-title">Recent Activity</span><span style="font-size:.8125rem;color:var(--accent);cursor:pointer">View all</span></div>
                        <div class="panel-body" style="padding-top:.5rem">
                            <div class="activity-list">
                                <div class="activity-item"><div class="activity-dot-wrap" style="background:var(--accent-light);color:var(--accent)">👤</div><div class="activity-text"><p><strong>Priya Sharma</strong> joined Dev Builders community</p><div class="activity-time">2 minutes ago</div></div></div>
                                <div class="activity-item"><div class="activity-dot-wrap" style="background:var(--success-bg);color:var(--success)">📚</div><div class="activity-text"><p><strong>Marco López</strong> enrolled in Full-Stack JavaScript 2025</p><div class="activity-time">18 minutes ago</div></div></div>
                                <div class="activity-item"><div class="activity-dot-wrap" style="background:var(--warning-bg);color:var(--warning)">⭐</div><div class="activity-text"><p><strong>Full-Stack JS</strong> received a 5-star review</p><div class="activity-time">1 hour ago</div></div></div>
                                <div class="activity-item"><div class="activity-dot-wrap" style="background:var(--danger-bg);color:var(--danger)">⏳</div><div class="activity-text"><p><strong>7 new member requests</strong> are awaiting approval</p><div class="activity-time">3 hours ago</div></div></div>
                                <div class="activity-item"><div class="activity-dot-wrap" style="background:var(--accent-light);color:var(--accent)">💬</div><div class="activity-text"><p><strong>New post</strong> in Design Minds — "Rate my portfolio"</p><div class="activity-time">5 hours ago</div></div></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="panel">
                        <div class="panel-header"><span class="panel-title">Recent Enrollments</span></div>
                        <div class="panel-body" style="padding-top:.5rem">
                            <div class="enrollment-list">
                                <div class="enroll-item">
                                    <div class="enroll-avatar" style="background:#3b82f6">ML</div>
                                    <div class="enroll-info">
                                        <div class="enroll-name">Marco López</div>
                                        <div class="enroll-course">Full-Stack JavaScript 2025</div>
                                    </div>
                                    <div class="enroll-time">18m</div>
                                </div>
                                <div class="enroll-item">
                                    <div class="enroll-avatar" style="background:#10b981">SJ</div>
                                    <div class="enroll-info">
                                        <div class="enroll-name">Sarah Jenkins</div>
                                        <div class="enroll-course">Figma Mastery: Pro UI Design</div>
                                    </div>
                                    <div class="enroll-time">2h</div>
                                </div>
                                <div class="enroll-item">
                                    <div class="enroll-avatar" style="background:#f59e0b">DR</div>
                                    <div class="enroll-info">
                                        <div class="enroll-name">David Ross</div>
                                        <div class="enroll-course">Growth Marketing Fundamentals</div>
                                    </div>
                                    <div class="enroll-time">5h</div>
                                </div>
                                <div class="enroll-item">
                                    <div class="enroll-avatar" style="background:#8b5cf6">AK</div>
                                    <div class="enroll-info">
                                        <div class="enroll-name">Anna Kowalski</div>
                                        <div class="enroll-course">Full-Stack JavaScript 2025</div>
                                    </div>
                                    <div class="enroll-time">1d</div>
                                </div>
                                <div class="enroll-item">
                                    <div class="enroll-avatar" style="background:#ec4899">TC</div>
                                    <div class="enroll-info">
                                        <div class="enroll-name">Tom Chen</div>
                                        <div class="enroll-course">Advanced React Patterns</div>
                                    </div>
                                    <div class="enroll-time">2d</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <% } else if (pageName.equals("community-create") || pageName.equals("community-edit")) { %>
            <div class="form-card" style="margin: 0 auto;">
                <div class="form-section-title"><%= pageName.equals("community-edit") ? "Edit Community" : "Create New Community" %></div>
                <form action="CommunityServlet" method="POST">
                    <div class="form-group">
                        <label class="form-label">Community Name</label>
                        <input type="text" class="form-input" placeholder="e.g. Design Minds" <%= pageName.equals("community-edit") ? "value='Design Minds'" : "" %>>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Description</label>
                        <textarea class="form-input" style="height: 100px" placeholder="What is this community about?"><%= pageName.equals("community-edit") ? "UI/UX designers sharing work, critiques, and tools." : "" %></textarea>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Category</label>
                        <select class="form-input">
                            <option>Design</option>
                            <option>Technology</option>
                            <option>Business</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Banner Image</label>
                        <div class="upload-area">
                            <div class="upload-icon">📸</div>
                            <p>Click to upload or drag and drop</p>
                            <span>SVG, PNG, JPG or GIF (max. 800x400px)</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Tags</label>
                        <div class="tags-input-area">
                            <span class="tag">UI/UX ✕</span>
                            <span class="tag">Design ✕</span>
                            <input type="text" placeholder="Add tag...">
                        </div>
                    </div>
                    <div class="toggle-row">
                        <div class="toggle-info">
                            <h4>Private Community</h4>
                            <p>Only approved members can view content</p>
                        </div>
                        <label class="toggle">
                            <input type="checkbox">
                            <span class="toggle-slider"></span>
                        </label>
                    </div>
                    <div style="margin-top: 2rem; display: flex; justify-content: flex-end; gap: 1rem;">
                        <button type="button" class="btn btn-ghost" onclick="location.href='?page=home'">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save Community</button>
                    </div>
                </form>
            </div>

            <% } else if (pageName.equals("community-manage")) { %>
            <div class="page-header">
                <div>
                    <h1>Manage Communities</h1>
                    <p>View and manage all your active communities</p>
                </div>
                <a href="?page=community-create" class="btn btn-primary">+ New Community</a>
            </div>

            <div class="toolbar">
                <div class="search-field">
                    <span class="search-field-icon">🔍</span>
                    <input type="text" placeholder="Search communities...">
                </div>
                <select class="filter-select">
                    <option>All Status</option>
                    <option>Active</option>
                    <option>Draft</option>
                </select>
            </div>

            <div class="table-wrap">
                <table class="data-table">
                    <thead>
                    <tr>
                        <th>Community</th>
                        <th>Category</th>
                        <th>Members</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <div class="td-community">
                                <div class="td-img-placeholder" style="background: linear-gradient(135deg, #6C63FF, #8B5CF6)">🚀</div>
                                <div style="font-weight: 600">Dev Builders</div>
                            </div>
                        </td>
                        <td>Technology</td>
                        <td>4,821</td>
                        <td><span class="badge badge-green">Active</span></td>
                        <td>
                            <div class="td-actions">
                                <a href="?page=community-edit" class="btn btn-ghost btn-sm">Edit</a>
                                <button class="btn btn-ghost btn-sm" style="color:var(--danger)">Delete</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="td-community">
                                <div class="td-img-placeholder" style="background: linear-gradient(135deg, #F59E0B, #EF4444)">🎨</div>
                                <div style="font-weight: 600">Design Minds</div>
                            </div>
                        </td>
                        <td>Design</td>
                        <td>2,304</td>
                        <td><span class="badge badge-green">Active</span></td>
                        <td>
                            <div class="td-actions">
                                <a href="?page=community-edit" class="btn btn-ghost btn-sm">Edit</a>
                                <button class="btn btn-ghost btn-sm" style="color:var(--danger)">Delete</button>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <% } else if (pageName.equals("course-create") || pageName.equals("course-edit")) { %>
            <div class="form-card" style="margin: 0 auto;">
                <div class="form-section-title"><%= pageName.equals("course-edit") ? "Edit Course" : "Create New Course" %></div>
                <form action="CourseServlet" method="POST">
                    <div class="form-group">
                        <label class="form-label">Course Title</label>
                        <input type="text" class="form-input" placeholder="e.g. Full-Stack JavaScript 2025" <%= pageName.equals("course-edit") ? "value='Full-Stack JavaScript 2025'" : "" %>>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label class="form-label">Community Link</label>
                            <select class="form-input">
                                <option>Dev Builders</option>
                                <option>Design Minds</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Pricing</label>
                            <select class="form-input">
                                <option>Free</option>
                                <option>Paid (One-time)</option>
                                <option>Subscription</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Course Modules</label>
                        <div class="module-item">
                            <span class="module-drag">⣿</span>
                            <div class="module-content">
                                <div class="module-title">1. Introduction to JavaScript</div>
                                <div class="module-lessons">3 lessons • 45 mins</div>
                            </div>
                            <button type="button" class="btn btn-ghost btn-icon">✏️</button>
                        </div>
                        <div class="module-item">
                            <span class="module-drag">⣿</span>
                            <div class="module-content">
                                <div class="module-title">2. Asynchronous JS & APIs</div>
                                <div class="module-lessons">5 lessons • 1h 20m</div>
                            </div>
                            <button type="button" class="btn btn-ghost btn-icon">✏️</button>
                        </div>
                        <button type="button" class="add-module-btn">+ Add Module</button>
                    </div>
                    <div style="margin-top: 2rem; display: flex; justify-content: flex-end; gap: 1rem;">
                        <button type="button" class="btn btn-ghost" onclick="location.href='?page=home'">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save Course</button>
                    </div>
                </form>
            </div>

            <% } else if (pageName.equals("courses")) { %>
            <div class="page-header">
                <div>
                    <h1>Manage Courses</h1>
                    <p>View and manage all your published and drafted courses</p>
                </div>
                <a href="?page=course-create" class="btn btn-primary">+ New Course</a>
            </div>

            <div class="toolbar">
                <div class="search-field">
                    <span class="search-field-icon">🔍</span>
                    <input type="text" placeholder="Search courses...">
                </div>
                <select class="filter-select">
                    <option>All Status</option>
                    <option>Published</option>
                    <option>Draft</option>
                </select>
            </div>

            <div class="table-wrap">
                <table class="data-table">
                    <thead>
                    <tr>
                        <th>Course Title</th>
                        <th>Community</th>
                        <th>Enrollments</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <div style="font-weight: 600">Full-Stack JavaScript 2025</div>
                        </td>
                        <td>Dev Builders</td>
                        <td>412</td>
                        <td>$49.00</td>
                        <td><span class="badge badge-green">Published</span></td>
                        <td>
                            <div class="td-actions">
                                <a href="?page=course-edit" class="btn btn-ghost btn-sm">Edit</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="font-weight: 600">Figma Mastery: Pro UI Design</div>
                        </td>
                        <td>Design Minds</td>
                        <td>287</td>
                        <td>$39.00</td>
                        <td><span class="badge badge-green">Published</span></td>
                        <td>
                            <div class="td-actions">
                                <a href="?page=course-edit" class="btn btn-ghost btn-sm">Edit</a>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <% } else if (pageName.equals("posts")) { %>
            <div class="page-header">
                <div>
                    <h1>Posts & Discussions</h1>
                    <p>Engage with your communities and moderate content</p>
                </div>
                <button class="btn btn-primary">Create Post</button>
            </div>

            <div class="post-type-tabs">
                <div class="post-tab active">All Posts</div>
                <div class="post-tab">Announcements</div>
                <div class="post-tab">Discussions</div>
                <div class="post-tab">Questions</div>
            </div>

            <div style="max-width: 680px;">
                <div class="post-card">
                    <div class="post-header">
                        <div class="user-avatar" style="background:#10B981">SJ</div>
                        <div class="user-info">
                            <div class="user-name">Sarah Jenkins</div>
                            <div class="user-role">2 hours ago in <strong>Design Minds</strong></div>
                        </div>
                    </div>
                    <div class="post-content">
                        <h3>Rate my portfolio update!</h3>
                        <p>Hey everyone! I just finished updating my portfolio with my latest case studies. I'd love to get some feedback on the typography hierarchy and overall layout before I start sending it out to recruiters. Thanks!</p>
                        <div class="post-image">🎨</div>
                    </div>
                    <div class="post-actions">
                        <button class="post-action-btn liked">❤️ 24</button>
                        <button class="post-action-btn">💬 5 Comments</button>
                        <button class="post-action-btn">↗️ Share</button>
                    </div>
                    <div class="comment-area">
                        <div class="comment-form">
                            <div class="user-avatar" style="width:28px;height:28px;font-size:.65rem">AK</div>
                            <textarea class="comment-box" rows="2" placeholder="Write a comment..."></textarea>
                            <button class="btn btn-primary btn-sm">Post</button>
                        </div>
                        <div class="comment-item">
                            <div class="user-avatar" style="width:28px;height:28px;font-size:.65rem;background:#F59E0B">ML</div>
                            <div class="comment-bubble">
                                <div class="comment-author">Marco López</div>
                                <div class="comment-text">The new layout is super clean! I love how you structured the case study sections. The only thing I'd adjust is maybe increasing the line height slightly on the body paragraphs for better readability.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <% } else if (pageName.equals("requests")) { %>
            <div class="page-header">
                <div>
                    <h1>Member Requests</h1>
                    <p>Review users requesting access to your private communities</p>
                </div>
            </div>

            <div class="empty-state">
                <div class="empty-icon">👥</div>
                <h3>No pending requests</h3>
                <p>You're all caught up! New member requests will appear here.</p>
            </div>
            <% } %>

        </div>
    </main>
</div>
</body>
</html>