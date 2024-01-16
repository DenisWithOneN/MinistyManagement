package ro.tso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import ro.tso.dao.EventDao;

@Controller
public class EventController {

	@GetMapping("events/all")
	public ModelAndView getAll() {
		ModelAndView mav = new ModelAndView("allEvents");
		mav.addObject("events", EventDao.allEvents());
		return mav;
	}
}
