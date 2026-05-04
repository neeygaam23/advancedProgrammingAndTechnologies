package com.projectname.filter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // No initialization required.
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String requestPath = request.getRequestURI();
        String contextPath = request.getContextPath();
        String path = requestPath.substring(contextPath.length());

        // Pages that don't require authentication
        if ("/".equals(path) ||
            "/login".equals(path) ||
            "/register".equals(path) ||
            "/login.jsp".equals(path) ||
            "/register.jsp".equals(path) ||
            "/index.jsp".equals(path) ||
            requestPath.endsWith(".css") ||
            requestPath.endsWith(".js") ||
            requestPath.endsWith(".jpg") ||
            requestPath.endsWith(".png") ||
            requestPath.endsWith(".gif")) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        // Check if user is logged in
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
    }
}
