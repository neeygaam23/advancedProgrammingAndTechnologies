package com.projectname.dao;

import com.projectname.utils.DBConnection;
import java.sql.*;
import java.util.*;

public class CourseDAO {

    public void create(String title, int communityId, String type, double price) {
        try (Connection con = DBConnection.getConnection()) {

            String sql = "INSERT INTO course(title, community_id, type, price) VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, title);
            ps.setInt(2, communityId);
            ps.setString(3, type);
            ps.setDouble(4, price);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, String>> getAll() {
        List<Map<String, String>> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {
            ResultSet rs = con.createStatement().executeQuery("SELECT * FROM course");

            while (rs.next()) {
                Map<String, String> c = new HashMap<>();
                c.put("title", rs.getString("title"));
                c.put("type", rs.getString("type"));
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}