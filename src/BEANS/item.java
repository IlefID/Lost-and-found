package BEANS;

public class item {
	private int id;
	private String nom;
	private String email;
	private String description;
	private String image;
	private String location;
	private String date;
	private int personneid;
	private boolean found;
	private int category;
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDescription() {
		return description;
	}
	public item(String nom, String email,String description, String image, String location, String date, int personneid, boolean found, int category) {
        this.nom = nom;
        this.email=email;
        this.description = description;
        this.image = image;
        this.location = location;
        this.date = date;
        this.personneid = personneid;
        this.found = found;
        this.category = category;
    }
	public item(String nom, String email, String description, String image, String location, String date,
			int personneid, int category) {
		super();
		this.nom = nom;
		this.email = email;
		this.description = description;
		this.image = image;
		this.location = location;
		this.date = date;
		this.personneid = personneid;
		this.category = category;
	}
	public item(int int1, String string, String string2, String string3, String string4, String string5,
			String dateString, int int2, boolean boolean1, int int3) {
		// TODO Auto-generated constructor stub
	}
	public item() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPersonneid() {
		return personneid;
	}
	public void setPersonneid(int personneid) {
		this.personneid = personneid;
	}
	public boolean getFound() {
		return found;
	}
	public void setFound(boolean found) {
		this.found = found;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	

}
