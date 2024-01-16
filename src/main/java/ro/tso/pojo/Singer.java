package ro.tso.pojo;

public class Singer {

	private int id;
	private String singerName;
	private int singerPhoneNumber;
	private int bandMembers;
	
	
	public Singer(int id, String singerName, int singerPhoneNumber, int bandMembers) {
		this.id = id;
		this.singerName = singerName;
		this.singerPhoneNumber = singerPhoneNumber;
		this.bandMembers = bandMembers;
	}
	
	public Singer() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSingerName() {
		return singerName;
	}

	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}

	public int getSingerPhoneNumber() {
		return singerPhoneNumber;
	}

	public void setSingerPhoneNumber(int singerPhoneNumber) {
		this.singerPhoneNumber = singerPhoneNumber;
	}

	public int getBandMembers() {
		return bandMembers;
	}

	public void setBandMembers(int bandMembers) {
		this.bandMembers = bandMembers;
	}
	
	
	
	
	
	
	
}
