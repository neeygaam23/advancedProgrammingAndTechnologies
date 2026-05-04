package com.projectname.dao;

import com.projectname.utils.DBConnection;

import java.sql.*;
import java.util.*;

public class CommunityDAO {

    public void create(String name, String category, String desc, String type) {
        try (Connection con = DBConnection.getConnection()) {

            String sql = "INSERT INTO community(name, category, description, type) VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, category);
            ps.setString(3, desc);
            ps.setString(4, type);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, String>> getAll() {
        List<Map<String, String>> list = new ArrayList<>();

        try (Connection con = DBConnection.getConnection()) {

            ResultSet rs = con.createStatement().executeQuery("SELECT * FROM community");

            while (rs.next()) {
                Map<String, String> c = new HashMap<>();
                c.put("id", rs.getString("id"));
                c.put("name", rs.getString("name"));
                c.put("category", rs.getString("category"));
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public void delete(int id) {
        try (Connection con = DBConnection.getConnection()) {
            PreparedStatement ps = con.prepareStatement("DELETE FROM community WHERE id=?");
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}