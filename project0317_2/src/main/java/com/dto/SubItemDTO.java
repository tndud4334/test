package com.dto;

public class SubItemDTO {

	public String gCode;
	public String gCategory;
	public String mName;
	public String gName;
	public int gPrice;
	public String gImage;
	public String gContent;
	public SubItemDTO(String gCode, String gCategory, String mName, String gName, int gprice, String gimage,
			String gcontent) {
		super();
		this.gCode = gCode;
		this.gCategory = gCategory;
		this.mName = mName;
		this.gName = gName;
		this.gPrice = gprice;
		this.gImage = gimage;
		this.gContent = gcontent;
	}
	public SubItemDTO() {
		super();
	}
	public String getgCode() {
		return gCode;
	}
	public void setgCode(String gCode) {
		this.gCode = gCode;
	}
	public String getgCategory() {
		return gCategory;
	}
	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public int getgPrice() {
		return gPrice;
	}
	public void setgPrice(int gprice) {
		this.gPrice = gprice;
	}
	public String getgImage() {
		return gImage;
	}
	public void setgImage(String gimage) {
		this.gImage = gimage;
	}
	public String getgContent() {
		return gContent;
	}
	public void setgContent(String gcontent) {
		this.gContent = gcontent;
	}
	@Override
	public String toString() {
		return "SubItemDTO [gCode=" + gCode + ", gCategory=" + gCategory + ", mName=" + mName + ", gName=" + gName
				+ ", gprice=" + gPrice + ", gimage=" + gImage + ", gcontent=" + gContent + "]";
	}

}