package com.projectname.utils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class SessionUtils {

    /**
     * Get logged-in user ID from session
     */
    public static Integer getUserId(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            Object userId = session.getAttribute("userId");
            if (userId instanceof Integer) {
                return (Integer) userId;
            }
        }
        return null;
    }

    /**
     * Get logged-in username from session
     */
    public static String getUsername(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            return (String) session.getAttribute("username");
        }
        return null;
    }

    /**
     * Get user role from session
     */
    public static String getUserRole(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            return (String) session.getAttribute("role");
        }
        return null;
    }

    /**
     * Check if user is admin
     */
    public static boolean isAdmin(HttpServletRequest request) {
        String role = getUserRole(request);
        return "admin".equals(role);
    }

    /**
     * Check if user is logged in
     */
    public static boolean isLoggedIn(HttpServletRequest request) {
        return getUserId(request) != null;
    }

    /**
     * Get user's full name
     */
    public static String getFullName(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            String firstName = (String) session.getAttribute("firstName");
            String lastName = (String) session.getAttribute("lastName");
            if (firstName != null && lastName != null) {
                return firstName + " " + lastName;
            }
        }
        return null;
    }

    /**
     * Get user email
     */
    public static String getEmail(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            return (String) session.getAttribute("email");
        }
        return null;
    }

    /**
     * Invalidate session (logout)
     */
    public static void invalidateSession(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }
}
