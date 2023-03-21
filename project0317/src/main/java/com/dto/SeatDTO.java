package com.dto;

public class SeatDTO {
	
	private int seat_id;
	private String schedule_id;
	private int theater;
	private char seat_row;
	private int seat_num;
	private String seat_member;
	
	public SeatDTO() {
		super();
	}
	public SeatDTO(int seat_id, String schedule_id, int theater, char seat_row, int seat_num, String seat_member) {
		super();
		this.seat_id = seat_id;
		this.schedule_id = schedule_id;
		this.theater = theater;
		this.seat_row = seat_row;
		this.seat_num = seat_num;
		this.seat_member = seat_member;
	}
	
	public int getSeat_id() {
		return seat_id;
	}
	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}
	public String getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(String schedule_id) {
		this.schedule_id = schedule_id;
	}
	public int getTheater() {
		return theater;
	}
	public void setTheater(int theater) {
		this.theater = theater;
	}
	public char getSeat_row() {
		return seat_row;
	}
	public void setSeat_row(char seat_row) {
		this.seat_row = seat_row;
	}
	public int getSeat_num() {
		return seat_num;
	}
	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}
	public String getSeat_member() {
		return seat_member;
	}
	public void setSeat_member(String seat_member) {
		this.seat_member = seat_member;
	}
	
	@Override
	public String toString() {
		return "SeatDTO [seat_id=" + seat_id + ", schedule_id=" + schedule_id + ", theater=" + theater + ", seat_row="
				+ seat_row + ", seat_num=" + seat_num + ", seat_member=" + seat_member + "]";
	}
}