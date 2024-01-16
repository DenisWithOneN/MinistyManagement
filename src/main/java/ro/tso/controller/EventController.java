package ro.tso.controller;

import java.io.IOException;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import ro.tso.dao.EventDao;
import ro.tso.pojo.Event;

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
	
	@GetMapping("events/create")
	public ModelAndView addEvent(Model model) {
		model.addAttribute("event", new Event());
		return new ModelAndView("createEvent", "model", model);
	}
	
	@PostMapping("events/create")
	public ModelAndView createEvent(@ModelAttribute Event event, ModelMap map, BindingResult binding) throws SQLException, IOException {
		EventDao.createEvent(event);
		return new ModelAndView("redirect:/events/all");
	}
	
	@GetMapping("folders/delete/{id}")
	public ModelAndView delete(@PathVariable int id) {
		EventDao.deleteById(id);
		return new ModelAndView("redirect:/events/all")
	}
}
