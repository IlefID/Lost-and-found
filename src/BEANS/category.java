package BEANS;

public class category {
	private int id;
	private String libelle;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLibelle() {
		return libelle;
	}
	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	public category(int id, String libelle) {
		super();
		this.id = id;
		this.libelle = libelle;
	}
	public category(String libelle) {
		super();
		this.libelle = libelle;
	}
	

}
