<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String pageName = request.getParameter("page");
  if (pageName == null) pageName = "home";
  String initials = (String) session.getAttribute("initials");
  if (initials == null) initials = "C";
  String creatorName = (String) session.getAttribute("creatorName");
  if (creatorName == null) creatorName = "Creator";
%>
<aside class="sidebar" id="dash-sidebar">
  <div class="sidebar-header">
    <a class="nav-logo" href="${pageContext.request.contextPath}/index.jsp" style="cursor:pointer;text-decoration:none">
      <div class="logo-mark"><svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" fill="#fff"/></svg></div>
      <span>Nexora</span>
    </a>
  </div>
  <nav class="sidebar-nav">
    <div class="sidebar-section-label">Overview</div>
    <a href="?page=home" class="nav-item <%= pageName.equals("home") ? "active" : "" %>"><span class="nav-icon">📊</span> Dashboard Home</a>

    <div class="sidebar-section-label">Communities</div>
    <a href="?page=community-create" class="nav-item <%= pageName.equals("community-create") ? "active" : "" %>"><span class="nav-icon">➕</span> Create Community</a>
    <a href="?page=community-edit" class="nav-item <%= pageName.equals("community-edit") ? "active" : "" %>"><span class="nav-icon">✏️</span> Edit Community</a>
    <a href="?page=community-manage" class="nav-item <%= pageName.equals("community-manage") ? "active" : "" %>"><span class="nav-icon">🏘️</span> Manage Community</a>

    <div class="sidebar-section-label">Courses</div>
    <a href="?page=course-create" class="nav-item <%= pageName.equals("course-create") ? "active" : "" %>"><span class="nav-icon">➕</span> Create Course</a>
    <a href="?page=course-edit" class="nav-item <%= pageName.equals("course-edit") ? "active" : "" %>"><span class="nav-icon">✏️</span> Edit Course</a>
    <a href="?page=courses" class="nav-item <%= pageName.equals("courses") ? "active" : "" %>"><span class="nav-icon">📚</span> Manage Courses</a>

    <div class="sidebar-section-label">Engagement</div>
    <a href="?page=posts" class="nav-item <%= pageName.equals("posts") ? "active" : "" %>"><span class="nav-icon">💬</span> Posts &amp; Discussions<span class="nav-badge">3</span></a>
    <a href="?page=requests" class="nav-item <%= pageName.equals("requests") ? "active" : "" %>"><span class="nav-icon">👥</span> Member Requests<span class="nav-badge">7</span></a>
  </nav>
  <div class="sidebar-footer">
    <div class="user-profile">
      <div class="user-avatar"><%= initials %></div>
      <div class="user-info"><div class="user-name"><%= creatorName %></div><div class="user-role">Creator Pro</div></div>
      <span style="color:var(--text-muted);font-size:16px">⋮</span>
    </div>
    <a href="${pageContext.request.contextPath}/AuthServlet?action=logout" class="nav-item" style="margin-top:.25rem;color:var(--danger);text-decoration:none"><span class="nav-icon">🚪</span> Logout</a>
  </div>
</aside>
