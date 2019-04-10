package com.mindtree.model;

public class AddMovie {
	
	
	
	public AddMovie() {
		super();
	}
	
	public int id;
	

	public String movieName;
	
	

	public int moviePrice;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getMoviePrice() {
		return moviePrice;
	}
	public void setMoviePrice(int moviePrice) {
		this.moviePrice = moviePrice;
	}
	
	public AddMovie(int id, String movieName, int moviePrice) {
		super();
		this.id = id;
		this.movieName = movieName;
		this.moviePrice = moviePrice;
	}
	@Override
	public String toString() {
		return "AddMovie [id=" + id + ", movieName=" + movieName + ", moviePrice=" + moviePrice + "]";
	}
	
	
	
}
