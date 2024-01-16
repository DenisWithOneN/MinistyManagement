package ro.tso.controller;

import java.io.IOException;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import ro.tso.dao.EventDao;

@Controller
public class EventController {

	@GetMapping("events/all")
	public ModelAndView getAll() throws SQLException, IOException {
		ModelAndView mav = new ModelAndView("allEvents");
		mav.addObject("eventView", EventDao.allEvents());
		return mav;
	}
	
	@GetMapping("events/{id}")
	public ModelAndView getSingleEvent(@PathVariable int id) throws SQLException, IOException {
		ModelAndView mav = new ModelAndView("singleEvent");
		mav.addObject("singleEvent", EventDao.getEventById(id));
		return mav;
		
	}
}
