package com.projectname.controller;

import com.projectname.dao.CourseDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class CourseServlet extends HttpServlet {

    CourseDAO dao = new CourseDAO();

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String type = req.getParameter("type");

        double price = "paid".equals(type)
                ? Double.parseDouble(req.getParameter("price"))
                : 0;

        dao.create(
                req.getParameter("title"),
                Integer.parseInt(req.getParameter("communityId")),
                type,
                price
        );

        res.sendRedirect("creator/creator-dashboard.jsp?page=courses");
    }
}