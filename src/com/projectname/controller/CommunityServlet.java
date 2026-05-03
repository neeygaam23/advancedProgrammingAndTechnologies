package com.projectname.controller;

import com.projectname.dao.CommunityDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class CommunityServlet extends HttpServlet {

    CommunityDAO dao = new CommunityDAO();

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        if ("create".equals(action)) {

            dao.create(
                    req.getParameter("name"),
                    req.getParameter("category"),
                    req.getParameter("desc"),
                    req.getParameter("type")
            );

            req.getSession().setAttribute("success", "Community Created!");
        }

        if ("delete".equals(action)) {
            dao.delete(Integer.parseInt(req.getParameter("id")));
        }

        res.sendRedirect("creator/creator-dashboard.jsp?page=home");
    }
}