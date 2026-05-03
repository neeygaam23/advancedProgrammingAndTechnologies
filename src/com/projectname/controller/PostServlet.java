package com.projectname.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class PostServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        // Simplified for coursework
        req.getSession().setAttribute("success", "Post Created!");

        res.sendRedirect("creator/creator-dashboard.jsp?page=posts");
    }
}