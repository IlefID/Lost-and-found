package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import BEANS.item;
import BEANS.personne;

public class ItemDAO {
	public void addItem(item item) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO item (nom, email, description, image, location, date, personneid, found, category) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?)";

        try (
        	 Connection connection = dbc.createConnection();
        	PreparedStatement stmt = connection.prepareStatement(sql)) {
        	stmt.setString(1, item.getNom());
        	stmt.setString(2, item.getEmail());
        	stmt.setString(3, item.getDescription());
        	stmt.setString(4, item.getImage());
        	stmt.setString(5, item.getLocation());
        	stmt.setString(6, item.getDate()); 
        	stmt.setInt(7, item.getPersonneid());
        	stmt.setBoolean(8, item.getFound());
        	stmt.setInt(9, item.getCategory());
        	stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	public List<item> getAllItems() {
        List<item> items = new ArrayList<>();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        String sql = "SELECT * FROM item"; 

        try (Connection connection = dbc.createConnection();
             PreparedStatement stmt = connection.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                item newItem = new item();
                
                java.sql.Date sqlDate = rs.getDate("date");
                String dateString = formatter.format(sqlDate);
                newItem.setId(rs.getInt("id"));
                newItem.setNom(rs.getString("nom"));
                newItem.setEmail(rs.getString("email"));
                newItem.setDescription(rs.getString("description"));
                newItem.setImage(rs.getString("image"));
                newItem.setLocation(rs.getString("location"));
                newItem.setDate(dateString);
                newItem.setPersonneid(rs.getInt("personneid"));
                newItem.setFound(rs.getBoolean("found"));
                newItem.setCategory(rs.getInt("category"));

                items.add(newItem);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items; 
    }
	public List<item> getFoundItems(){
		try {
			Connection maconnexion=dbc.createConnection();
			java.sql.PreparedStatement ps = maconnexion.prepareStatement("Select * from item where found=1 "); 
			ResultSet rs = ps.executeQuery();
			
			ArrayList<item> items = new ArrayList<item>();
			while(rs.next()){
				item item = new item(rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(10));
				item.setId(rs.getInt("id"));
				items.add(item);
		}
		return items;
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	public static void deleteItemById(int id) {
		String sql = "DELETE FROM item WHERE id = ?";
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
	public int countFoundItems() {
        int count = 0;
        try {
            Connection maconnexion = dbc.createConnection();
            PreparedStatement ps = maconnexion.prepareStatement("SELECT COUNT(*) FROM item WHERE found=1");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
	public void updateFoundStatus(int itemId, boolean foundStatus) {
	    if (!itemExists(itemId)) {
	        throw new RuntimeException("Item with ID " + itemId + " not found.");
	    }
	    String sql = "UPDATE item SET found = ? WHERE id = ?";
	    try (Connection connection = dbc.createConnection();
	         PreparedStatement stmt = connection.prepareStatement(sql)) {
	        stmt.setBoolean(1, foundStatus);
	        stmt.setInt(2, itemId);
	        int affectedRows = stmt.executeUpdate();
	        if (affectedRows == 0) {
	            throw new SQLException("Updating item failed, no rows affected.");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	public boolean itemExists(int itemId) {
	    String checkSql = "SELECT count(*) FROM item WHERE id = ?";
	    try (Connection connection = dbc.createConnection();
	         PreparedStatement stmt = connection.prepareStatement(checkSql)) {
	        stmt.setInt(1, itemId);
	        ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	            return rs.getInt(1) > 0;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	public List<item> searchItemsByName(String nom) {
        List<item> itemList = new ArrayList<>();
        List<item> items = new ArrayList<>();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Connection connection = dbc.createConnection();

        String sql = "SELECT * FROM item WHERE nom LIKE ?";
        
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, "%" + nom + "%");
            
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
            	java.sql.Date sqlDate = resultSet.getDate("date");
                String dateString = formatter.format(sqlDate);
            	item item = new item();
                item.setId(resultSet.getInt("id"));
                item.setNom(resultSet.getString("nom"));
                item.setDescription(resultSet.getString("description"));
                item.setImage(resultSet.getString("image"));
                item.setLocation(resultSet.getString("location"));
                item.setDate(dateString);
                item.setPersonneid(resultSet.getInt("personneid"));
                item.setFound(resultSet.getBoolean("found"));
                item.setCategory(resultSet.getInt("category"));
                itemList.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return itemList;
    }
	public List<item> searchItemsByCategory(String libelle) {
		// TODO Auto-generated method stub
		 List<item> itemList = new ArrayList<>();
		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		    Connection connection = null;
		    PreparedStatement statement = null;
		    ResultSet resultSet = null;

		    String sql = "SELECT i.* FROM item i INNER JOIN category c ON i.category = c.idCategory WHERE c.libelle LIKE ?";

		    try {
		        connection = dbc.createConnection();
		        statement = connection.prepareStatement(sql);
		        statement.setString(1, "%" + libelle + "%");
		        resultSet = statement.executeQuery();

		        while (resultSet.next()) {
		            java.sql.Date sqlDate = resultSet.getDate("date");
		            String dateString = formatter.format(sqlDate);
		            item myItem = new item(
		                    resultSet.getInt("id"),
		                    resultSet.getString("nom"),
		                    resultSet.getString("email"),
		                    resultSet.getString("description"),
		                    resultSet.getString("image"),
		                    resultSet.getString("location"),
		                    dateString,
		                    resultSet.getInt("personneid"),
		                    resultSet.getBoolean("found"),
		                    resultSet.getInt("category")
		            );
		            itemList.add(myItem);
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		    return itemList;
	}
	public item getItemById(int itemId) {
	    item resultItem = null;
	    String sql = "SELECT * FROM item WHERE id = ?";
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

	    try (Connection connection = dbc.createConnection();
	         PreparedStatement stmt = connection.prepareStatement(sql)) {
	        
	        stmt.setInt(1, itemId);
	        ResultSet rs = stmt.executeQuery();
	        
	        if (rs.next()) {
	            resultItem = new item();
	            java.sql.Date sqlDate = rs.getDate("date");
	            String dateString = formatter.format(sqlDate);
	            
	            resultItem.setId(rs.getInt("id"));
	            resultItem.setNom(rs.getString("nom"));
	            resultItem.setEmail(rs.getString("email"));
	            resultItem.setDescription(rs.getString("description"));
	            resultItem.setImage(rs.getString("image"));
	            resultItem.setLocation(rs.getString("location"));
	            resultItem.setDate(dateString);
	            resultItem.setPersonneid(rs.getInt("personneid"));
	            resultItem.setFound(rs.getBoolean("found"));
	            resultItem.setCategory(rs.getInt("category"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return resultItem;
	}


}
