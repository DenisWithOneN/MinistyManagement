package ro.tso.pojo;

public class Speaker {
	
	private int id;
	private String speakerName;
	private int speakerPhoneNumber;
	private String emailAdress;
	public Speaker(int id, String speakerName, int speakerPhoneNumber, String emailAdress) {
		this.id = id;
		this.speakerName = speakerName;
		this.speakerPhoneNumber = speakerPhoneNumber;
		this.emailAdress = emailAdress;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpeakerName() {
		return speakerName;
	}
	public void setSpeakerName(String speakerName) {
		this.speakerName = speakerName;
	}
	public int getSpeakerPhoneNumber() {
		return speakerPhoneNumber;
	}
	public void setSpeakerPhoneNumber(int speakerPhoneNumber) {
		this.speakerPhoneNumber = speakerPhoneNumber;
	}
	public String getEmailAdress() {
		return emailAdress;
	}
	public void setEmailAdress(String emailAdress) {
		this.emailAdress = emailAdress;
	}
	
	

}
