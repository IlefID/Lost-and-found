package DAO;
import java.sql.DriverManager;
import java.sql.*;

public class dbc {
	 public static Connection createConnection() {
	        Connection con = null;
	        String url = "jdbc:mysql://localhost:3306/lost_and_found";
	        String username = "root"; 
	        String password = ""; 
	        try {
	        	try{
	            Class.forName("com.mysql.jdbc.Driver");
	            System.out.println("Driver JDBC charge avec succes."); }
	        	
	        	catch (ClassNotFoundException e) {
		            e.printStackTrace();
		        }
	            con = DriverManager.getConnection(url, username, password);
	            System.out.println("Connexion a la base de donnees etablie avec succes.");
	        } 
	        catch (Exception e) {
	            e.printStackTrace();
	       
	        }
	        return con;
	    }

}