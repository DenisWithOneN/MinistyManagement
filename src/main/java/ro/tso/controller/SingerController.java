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
import ro.tso.dao.SingerDao;
import ro.tso.pojo.Singer;


@Controller
public class SingerController {
	
	@GetMapping("singers/all")
	public ModelAndView getAll() throws SQLException, IOException {
		ModelAndView mav = new ModelAndView("allSingers");
		//adding singer objects using SingerDao function getAll
		mav.addObject("singer", SingerDao.getAll());
		return mav;
	}
	
	@GetMapping("singers/{id}")
	public ModelAndView getById(@PathVariable int id) throws SQLException, IOException {
		ModelAndView mav = new ModelAndView("singleSinger");
		mav.addObject("singleSinger", SingerDao.getById(id));
		return mav;
	}
	
	@GetMapping("/singers/create")
	public ModelAndView AddSinger(Model model) {
		Singer singer = new Singer();
		model.addAttribute("singer", singer);
		return new ModelAndView("createSinger", "model", model);
		
		
	}
	
	@PostMapping("/singers/create")
	public ModelAndView SaveSinger(@ModelAttribute("singer") Singer singer, ModelMap model, BindingResult result) {
		
		try {
			SingerDao.create(singer);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/singers/all");
	}
	
	@GetMapping("/singers/delete/{id}")
	public ModelAndView delete(@PathVariable int id) throws SQLException {
		SingerDao.delete(id);
		return new ModelAndView("redirect:/singers/all");
	}
	
	@GetMapping("/singers/edit/{id}")
	public ModelAndView editSinger(Model model, @PathVariable int id) throws SQLException, IOException {
		Singer singer = SingerDao.getById(id);
		model.addAttribute("singer", singer);
		return new ModelAndView("editSinger", "model", model);
	}
	
	@PostMapping("/singers/edit")
	public ModelAndView editSingerSave(@ModelAttribute("singer") Singer singer,
			ModelMap model, BindingResult result) {
		
		try {
			SingerDao.update(singer);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/singers/all");
	}
	
}
