package com.projectname.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class PostServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        // Simplified for coursework
        req.getSession().setAttribute("success", "Post Created!");

        res.sendRedirect("creator/creator-dashboard.jsp?page=posts");
    }
}