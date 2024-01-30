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
		mav.addObject("eventView", EventDao.getAll());
		return mav;
	}

	@GetMapping("events/{id}")
	public ModelAndView getSingleEvent(@PathVariable int id) throws SQLException, IOException {
		ModelAndView mav = new ModelAndView("singleEvent");
		mav.addObject("singleEvent", EventDao.getById(id));
		return mav;

	}

	@GetMapping("/events/create")
	public ModelAndView addEvent(Model model) throws SQLException, IOException {
		Event event = new Event();
		model.addAttribute("event", event);
		return new ModelAndView("createEvent", "model", model);
	}

	@PostMapping("/events/create")
	public ModelAndView eventAddSave(@ModelAttribute("event") Event event, ModelMap model, BindingResult result) {

		try {
			EventDao.create(event);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView("redirect:/events/all");
	}

	@GetMapping("events/delete/{id}")
	public ModelAndView delete(@PathVariable int id) throws SQLException, IOException {
		EventDao.deleteById(id);
		return new ModelAndView("redirect:/events/all");
	}
	
	@GetMapping("/events/edit/{id}")
	public ModelAndView eventEditGet(Model model, @PathVariable int id) throws SQLException, IOException {
		System.out.println("ID from Path Variable: " + id);
		Event event = EventDao.getById(id);
		System.out.println("ID from Event Object: " + event.getId());
		model.addAttribute("event", event);
		return new ModelAndView("editEvent", "model", model);
	}
	
	@PostMapping("/events/edit")
	public ModelAndView eventEditSave(@ModelAttribute("event") Event event, ModelMap model, BindingResult result) {
		try {
			EventDao.update(event);
		} catch (SQLException sqlException) {
	        // Handle or log SQLException
	        sqlException.printStackTrace();
	    } catch (Exception e) {
	        // Catch any other exceptions
	        e.printStackTrace();
	    }

		return new ModelAndView("redirect:/events/all");
	}
}
