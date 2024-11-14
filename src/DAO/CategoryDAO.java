package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEANS.category;
import BEANS.personne;

public class CategoryDAO implements CategoryInterface{

	@Override
	public void addCategory(String libelle) {
		String sql = "INSERT INTO category (libelle) VALUES (?)";
        try (
            Connection maconnexion = dbc.createConnection();
            PreparedStatement stmt = maconnexion.prepareStatement(sql)
        ) { 
            stmt.setString(1, libelle);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	public List<category> getAll(){
		String sql = "SELECT * FROM category";
        List<category> categories = new ArrayList<>();
        try (
            Connection maconnexion = dbc.createConnection();
            PreparedStatement ps = maconnexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()
        ) {
            while (rs.next()) {
                category category = new category(rs.getInt("idCategory"), rs.getString("libelle"));
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
		
	}
	public void updateCategory(int id, String libelle) {
        String sql = "UPDATE category SET libelle = ? WHERE idCategory = ?";
        try (
            Connection maconnexion = dbc.createConnection();
            PreparedStatement stmt = maconnexion.prepareStatement(sql)
        ) {
            stmt.setString(1, libelle);
            stmt.setInt(2, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	public void deleteCategory(int id) {
        String sql = "DELETE FROM category WHERE idCategory = ?";
        try (
            Connection maconnexion = dbc.createConnection();
            PreparedStatement stmt = maconnexion.prepareStatement(sql)
        ) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	public category getCategoryById(int id) {
        String sql = "SELECT * FROM category WHERE idCategory = ?";
        category category = null;
        try (
            Connection maconnexion = dbc.createConnection();
            PreparedStatement ps = maconnexion.prepareStatement(sql)
        ) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                category = new category(rs.getInt("idCategory"), rs.getString("libelle"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

}
