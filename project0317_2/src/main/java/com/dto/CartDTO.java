package com.dto;

public class CartDTO {

	
	private int num;
	private String userid;
	private String gName;
	private String gCode;
	private String mName;
	private int gPrice;
	private int gAmount;
	private String gCategory;
	private String gImage;
	private String gContent;
	public CartDTO(int num, String userid, String gName, String gCode, String mName, int gPrice, int gAmount,
			String gCategory, String gImage, String gContent) {
		super();
		this.num = num;
		this.userid = userid;
		this.gName = gName;
		this.gCode = gCode;
		this.mName = mName;
		this.gPrice = gPrice;
		this.gAmount = gAmount;
		this.gCategory = gCategory;
		this.gImage = gImage;
		this.gContent = gContent;
	}
	public CartDTO() {
		super();
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public String getgCode() {
		return gCode;
	}
	public void setgCode(String gCode) {
		this.gCode = gCode;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public int getgPrice() {
		return gPrice;
	}
	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}
	public int getgAmount() {
		return gAmount;
	}
	public void setgAmount(int gAmount) {
		this.gAmount = gAmount;
	}
	public String getgCategory() {
		return gCategory;
	}
	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}
	public String getgImage() {
		return gImage;
	}
	public void setgImage(String gImage) {
		this.gImage = gImage;
	}
	public String getgContent() {
		return gContent;
	}
	public void setgContent(String gContent) {
		this.gContent = gContent;
	}
	@Override
	public String toString() {
		return "CartDTO [num=" + num + ", userid=" + userid + ", gName=" + gName + ", gCode=" + gCode + ", mName="
				+ mName + ", gPrice=" + gPrice + ", gAmount=" + gAmount + ", gCategory=" + gCategory + ", gImage="
				+ gImage + ", gContent=" + gContent + "]";
	}
	
}
