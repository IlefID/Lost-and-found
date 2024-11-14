package DAO;

import java.util.List;

import BEANS.category;

public interface CategoryInterface {
	 public  void addCategory(String libelle); 
	 public void deleteCategory(int id);
	 public void updateCategory(int id, String libelle);
	 public List<category> getAll();
}
