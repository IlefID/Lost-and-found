package DAO;

import java.util.ArrayList;

import BEANS.personne;

public interface PersonneInterface {
	abstract public void AddPersonne(String nom, String prenom, String adresse, String tel, String image, String email,String password);
	abstract public personne getPersonneByEmail(String email, String password);
	public ArrayList<personne> getAll();
	public Integer getPersonneIdByEmail(String email);
		
}
