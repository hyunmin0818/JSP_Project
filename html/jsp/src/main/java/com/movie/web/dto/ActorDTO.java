package com.movie.web.dto;

public class ActorDTO {
	// actor 테이블
		private int actorId;
		private String actor_name;
		private int birth_date;
		
		
		public int getActorid() {
			return actorId;
		}
		public void setActorid(int actorid) {
			this.actorId = actorid;
		}
		public String getName() {
			return actor_name;
		}
		public void setName(String name) {
			this.actor_name = name;
		}
		public int getBirth_date() {
			return birth_date;
		}
		public void setBirth_date(int birth_date) {
			this.birth_date = birth_date;
		}
		
		
}