package com.mindtree.serviceImpl;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mindtree.dao.MovieDao;
import com.mindtree.model.AddMovie;
import com.mindtree.service.MovieService;
@Service
public class MovieServiceImpl implements MovieService {
@Autowired
MovieDao moviedao;
	@Override
	@Transactional
	public void insertMovie(AddMovie movie) {
		
		moviedao.insertMovie(movie);
	}
	
	
	@Override
	@Transactional
	public void update(AddMovie movie)
	{
		moviedao.update(movie);
	}

	@Override
	@Transactional
	public AddMovie getById(int id)
	{
		return moviedao.getById(id);
	}
	
	
	/*@Override
	@Transactional
	public List<AddMovie> getById(int id)
	{
		return moviedao.getById(id);
	}*/
	
	@Override
	@Transactional
	public void delete(int id) {
		moviedao.delete(id);
		
	}
	@Override
	@Transactional
	public List<AddMovie> getAll() {
		return moviedao.getAll();
		
	}

	

}
