package com.mindtree.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


import com.mindtree.model.AddMovie;



public interface MovieDao {
	
	@Insert("INSERT INTO addmovie (id,movieName,moviePrice) VALUES (#{id}, #{movieName},#{moviePrice})")
	public void insertMovie(AddMovie movie);
	
	
	@Update("UPDATE addmovie SET id= #{id}, movieName= #{movieName}, moviePrice=#{moviePrice} WHERE id = #{id}")
	   void update(AddMovie movie);
	
	@Select("SELECT * FROM addmovie WHERE id= #{id}")
	   public AddMovie getById(int id);

	@Select("SELECT * FROM addmovie")
	  public List<AddMovie> getAll();


	 @Delete("DELETE from addmovie WHERE id = #{id}")
	   public void delete(int id);
	
}
