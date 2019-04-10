package com.mindtree.service;

import java.util.List;


import com.mindtree.model.AddMovie;



public interface MovieService {
	public void insertMovie(AddMovie movie);
	public void delete(int id);
	public List<AddMovie> getAll();
	public void update(AddMovie movie);
	public AddMovie getById(int id);
}
