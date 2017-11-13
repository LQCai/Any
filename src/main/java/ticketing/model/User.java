package ticketing.model;

public class User {
	private int id;
	private String id_p;
	private String password;
	private String id_card;
	private float money;
	private String e_mail;
	private String tel;
	public User(String idP, String password) {
		super();
		id_p = idP;
		this.password = password;
	}

	public User(String id_p, String password, String tel) {
		this.id_p = id_p;
		this.password = password;
		this.tel = tel;
	}

	public User(int id, String idP, String password, String idCard,
				float money, String eMail, String tel) {
		super();
		this.id = id;
		id_p = idP;
		this.password = password;
		id_card = idCard;
		this.money = money;
		e_mail = eMail;
		this.tel = tel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getId_p() {
		return id_p;
	}
	public void setId_p(String idP) {
		id_p = idP;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId_card() {
		return id_card;
	}
	public void setId_card(String idCard) {
		id_card = idCard;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String eMail) {
		e_mail = eMail;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	

}
	