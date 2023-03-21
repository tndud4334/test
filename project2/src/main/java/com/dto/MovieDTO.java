package com.dto;

public class MovieDTO {
	private String mcode;
	private String mname;
	private String mename;
	private String mdirector;
	private String mactor;
	private String mgenre;
	private int mtime;
	private String mgrade;
	private String mdate;
	private String mcontent;
	private String mimage;
	public MovieDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovieDTO(String mcode, String mname, String mename, String mdirector, String mactor, String mgenre,
			int mtime, String mgrade, String mdate, String mcontent, String mimage) {
		super();
		this.mcode = mcode;
		this.mname = mname;
		this.mename = mename;
		this.mdirector = mdirector;
		this.mactor = mactor;
		this.mgenre = mgenre;
		this.mtime = mtime;
		this.mgrade = mgrade;
		this.mdate = mdate;
		this.mcontent = mcontent;
		this.mimage = mimage;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMename() {
		return mename;
	}
	public void setMename(String mename) {
		this.mename = mename;
	}
	public String getMdirector() {
		return mdirector;
	}
	public void setMdirector(String mdirector) {
		this.mdirector = mdirector;
	}
	public String getMactor() {
		return mactor;
	}
	public void setMactor(String mactor) {
		this.mactor = mactor;
	}
	public String getMgenre() {
		return mgenre;
	}
	public void setMgenre(String mgenre) {
		this.mgenre = mgenre;
	}
	public int getMtime() {
		return mtime;
	}
	public void setMtime(int mtime) {
		this.mtime = mtime;
	}
	public String getMgrade() {
		return mgrade;
	}
	public void setMgrade(String mgrade) {
		this.mgrade = mgrade;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public String getMimage() {
		return mimage;
	}
	public void setMimage(String mimage) {
		this.mimage = mimage;
	}
	@Override
	public String toString() {
		return "MovieDTO [mcode=" + mcode + ", mname=" + mname + ", mename=" + mename + ", mdirector=" + mdirector
				+ ", mactor=" + mactor + ", mgenre=" + mgenre + ", mtime=" + mtime + ", mgrade=" + mgrade + ", mdate="
				+ mdate + ", mcontent=" + mcontent + ", mimage=" + mimage + "]";
	}
	
	
}
