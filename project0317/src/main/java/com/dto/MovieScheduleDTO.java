package com.dto;

public class MovieScheduleDTO {
	
	private String schedule_id;
	private String mcode;
	private Object start_time;
	private int theater;
	private int seat_total;
	private int seat_available;
	private int price;
	
	public MovieScheduleDTO() {
		super();
	}
	public MovieScheduleDTO(String schedule_id, String mcode, Object start_time, int theater, int seat_total,
			int seat_available, int price) {
		super();
		this.schedule_id = schedule_id;
		this.mcode = mcode;
		this.start_time = start_time;
		this.theater = theater;
		this.seat_total = seat_total;
		this.seat_available = seat_available;
		this.price = price;
	}
	
	public String getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(String schedule_id) {
		this.schedule_id = schedule_id;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public Object getStart_time() {
		return start_time;
	}
	public void setStart_time(Object start_time) {
		this.start_time = start_time;
	}
	public int getTheater() {
		return theater;
	}
	public void setTheater(int theater) {
		this.theater = theater;
	}
	public int getSeat_total() {
		return seat_total;
	}
	public void setSeat_total(int seat_total) {
		this.seat_total = seat_total;
	}
	public int getSeat_available() {
		return seat_available;
	}
	public void setSeat_available(int seat_available) {
		this.seat_available = seat_available;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "MovieScheduleDTO [schedule_id=" + schedule_id + ", mcode=" + mcode + ", start_time=" + start_time
				+ ", theater=" + theater + ", seat_total=" + seat_total + ", seat_available=" + seat_available
				+ ", price=" + price + "]";
	}
}