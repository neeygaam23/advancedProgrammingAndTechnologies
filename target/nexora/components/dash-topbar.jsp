<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String initials = (String) session.getAttribute("initials");
  if (initials == null) initials = "C";
%>
<header class="dash-topbar">
  <div class="page-title" id="dash-page-title">
    <%
      String pageName = request.getParameter("page");
      if (pageName == null || pageName.equals("home")) out.print("Dashboard Home");
      else if (pageName.equals("community-create")) out.print("Create Community");
      else if (pageName.equals("community-edit")) out.print("Edit Community");
      else if (pageName.equals("community-manage")) out.print("Manage Community");
      else if (pageName.equals("course-create")) out.print("Create Course");
      else if (pageName.equals("course-edit")) out.print("Edit Course");
      else if (pageName.equals("courses")) out.print("Manage Courses");
      else if (pageName.equals("posts")) out.print("Posts & Discussions");
      else if (pageName.equals("requests")) out.print("Member Requests");
      else out.print("Dashboard");
    %>
  </div>
  <div class="dash-search">
    <span class="dash-search-icon">🔍</span>
    <input type="text" placeholder="Search...">
  </div>
  <div class="topbar-icons">
    <div class="icon-btn">🔔<div class="notif-dot"></div></div>
    <div class="icon-btn">⚙️</div>
  </div>
  <div class="topbar-avatar"><%= initials %></div>
</header>
