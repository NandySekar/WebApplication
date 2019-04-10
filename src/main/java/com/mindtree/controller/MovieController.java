package com.mindtree.controller;

import java.text.ParseException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mindtree.model.AddMovie;
import com.mindtree.service.MovieService;


@Controller
public class MovieController {
	@Autowired
	private MovieService movieservice;

	@RequestMapping(value="/index")
	public String index( )
	{
    return "index";
	}
	
	@RequestMapping(value="/addMovie")
	public String add() {
		return "addMovie";
	}
	
	@RequestMapping(value="/updateMovie")
	public String update() {
		return "update";
	}
	
	
	
	@RequestMapping(value="/deleteMovie")
	public String delete() {
		return "deleteMovie";
	}
	
	@RequestMapping(value="/insert")
	public String display(@RequestParam("id")int id,@RequestParam("moviename")String movieName,@RequestParam("movieprice")int moviePrice) throws ParseException
	{
		AddMovie sc=new AddMovie();
		sc.setId(id);
		sc.setMovieName(movieName);
	sc.setMoviePrice(moviePrice);
		
    movieservice.insertMovie(sc);
    return "display";

	}

	@RequestMapping(value="/update")
	public String update(@RequestParam("id")int id,Model model)throws ParseException
	{
		AddMovie movie1=movieservice.getById(id);
		model.addAttribute("movie1",movie1);
		return "updateMovie";
		
	}
	
	@RequestMapping(value="/updateMovieFinal")
	public String updateMovieDetails(@RequestParam("id")int id,@RequestParam("moviename")String movieName,@RequestParam("movieprice")int moviePrice) throws ParseException
	{
		AddMovie movie2=new AddMovie();
		movie2.setId(id);
		movie2.setMovieName(movieName);
		movie2.setMoviePrice(moviePrice);
		
		movieservice.update(movie2);
		return "display";
	}
	
	@RequestMapping(value="/delete")
	public String delete(@RequestParam("id")int id)throws ParseException
	{
		movieservice.delete(id);
		return "display";
		
	}
	
	@RequestMapping(value="/getMovie")
	
	public String getTheDetails(Model model)throws ParseException
	{
		List<AddMovie> moviedetails=movieservice.getAll();
		
		model.addAttribute("moviedetails",moviedetails);
		return "getMovie";
		
	}
	
}