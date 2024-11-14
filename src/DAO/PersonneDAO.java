package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import BEANS.personne;

public class PersonneDAO implements PersonneInterface{

	@Override
	public void AddPersonne(String nom, String prenom, String adresse, String tel, String image, String email,
			String password) {
		String sql = "INSERT INTO personne (nom, prenom, adresse, tel, image, email, password) VALUES (? , ? , ? , ? , ? , ? , ?)";
		try (
			Connection maconnexion=dbc.createConnection();
			PreparedStatement stmt = maconnexion.prepareStatement(sql)) { 
			stmt.setString(1, nom);
			stmt.setString(2, prenom); 
			stmt.setString(3, tel);
			stmt.setString(4, adresse);
			stmt.setString(5, image);
			stmt.setString(6, email);
			stmt.setString(7, password);
			stmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public personne getPersonneByEmail(String email, String password) {
		String sql = "SELECT * FROM personne WHERE email = ? AND password = ?";
        try (Connection maconnexion = dbc.createConnection();
             PreparedStatement stmt = maconnexion.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new personne(
                    rs.getInt("id"),
                    rs.getString("nom"),
                    rs.getString("prenom"),
                    rs.getString("adresse"),
                    rs.getString("tel"),
                    rs.getString("image"),
                    rs.getString("email"),
                    rs.getString("password")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}
	
	public ArrayList<personne> getAll() {
		try {
			Connection maconnexion=dbc.createConnection();
			java.sql.PreparedStatement ps = maconnexion.prepareStatement("Select * from personne"); 
			ResultSet rs = ps.executeQuery();
			
			ArrayList<personne> users = new ArrayList<personne>();
			while(rs.next()){
				personne user = new personne(rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				user.setId(rs.getInt("id"));
				users.add(user);
		}
		return users;
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	public void addPersonne(personne personne) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO personne (id, nom, email, tel, password) VALUES (?, ?, ?, ?, ?)";

        try (
        	 Connection connection = dbc.createConnection();
        	PreparedStatement stmt = connection.prepareStatement(sql)) {
        	stmt.setInt(1, personne.getId());
        	stmt.setString(2, personne.getNom());
        	stmt.setString(3, personne.getEmail());
        	stmt.setString(4, personne.getTel());
        	stmt.setString(5, personne.getPassword());
        	stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
    @Override
    public Integer getPersonneIdByEmail(String email) {
        String sql = "SELECT id FROM personne WHERE email = ?";
        Integer personneId = null; 

        try (
            Connection connection = dbc.createConnection(); 
            PreparedStatement stmt = connection.prepareStatement(sql)
        ) {
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    personneId = rs.getInt("id");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return personneId; 
    }

	
	

}
