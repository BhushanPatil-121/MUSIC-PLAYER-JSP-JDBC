package com.jspider.musicplayerjsp.song;

public class Song {
	  static String id;
	  static String song;
	  static String singer;
	  static String movie;
	  static String duration;
	  
	public  String getId() {
		return id;
	}
	public  void setId(String id) {
		Song.id = id;
	}
	public  String getSong() {
		return song;
	}
	public  void setSong(String song) {
		Song.song = song;
	}
	public  String getSinger() {
		return singer;
	}
	public  void setSinger(String singer) {
		Song.singer = singer;
	}
	public  String getMovie() {
		return movie;
	}
	public  void setMovie(String movie) {
		Song.movie = movie;
	}
	public  String getDuration() {
		return duration;
	}
	public  void setDuration(String duration) {
		Song.duration = duration;
	}
	@Override
	public String toString() {
		return "Song Id :- " +getId()+"\nSong Name :- "+getSong()+"\nSinger Name :- "+getSinger()+"\nMovie Name :- "+getMovie()+"\nSong Duration :-"+getDuration()+"\n\n";
	}
	
}
