package com.movie.web.dto;

public class ActorDTO {
	// actor 테이블
		private int actorid;
		private String name;
		private int birth_date;
		
		
		public int getActorid() {
			return actorid;
		}
		public void setActorid(int actorid) {
			this.actorid = actorid;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getBirth_date() {
			return birth_date;
		}
		public void setBirth_date(int birth_date) {
			this.birth_date = birth_date;
		}
		
		
}
