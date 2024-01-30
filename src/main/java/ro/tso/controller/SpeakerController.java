package ro.tso.controller;

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

import ro.tso.dao.SpeakerDao;
import ro.tso.pojo.Speaker;

@Controller
public class SpeakerController {

	@GetMapping("/speakers/all")
	public ModelAndView getAll() throws SQLException {
		ModelAndView mav = new ModelAndView("allSpeakers");
		mav.addObject("speaker", SpeakerDao.getAll());
		return mav;
	}

	@GetMapping("/speakers/{id}")
	public ModelAndView getAllById(@PathVariable int id) throws SQLException {
		ModelAndView mav = new ModelAndView("singleSpeaker");
		mav.addObject("singleSpeaker", SpeakerDao.getById(id));
		return mav;
	}

	@GetMapping("/speakers/create")
	public ModelAndView addSpeaker(Model model) {
		Speaker speaker = new Speaker();
		model.addAttribute("speaker", speaker);
		return new ModelAndView("createSpeaker", "model", model);
	}

	@PostMapping("/speakers/create")
	public ModelAndView saveSpeaker(@ModelAttribute("speaker") Speaker speaker, ModelMap model, BindingResult binding) {

		try {
			SpeakerDao.create(speaker);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/speakers/all");
	}

	@GetMapping("/speakers/delete/{id}")
	public ModelAndView deleteSpeaker(@PathVariable int id) throws SQLException {
		SpeakerDao.delete(id);
		return new ModelAndView("redirect:/speakers/all");
	}

	@GetMapping("/speakers/edit/{id}")
	public ModelAndView editSpeaker(Model model, @PathVariable int id) throws SQLException {
		Speaker speaker = SpeakerDao.getById(id);
		model.addAttribute("speaker", speaker);
		return new ModelAndView("editSpeaker", "model", model);
	}

	@PostMapping("/speakers/edit")
	public ModelAndView editSpeakerSave(@ModelAttribute("speaker") Speaker speaker, ModelMap model,
			BindingResult resutl) {
		try {
			SpeakerDao.update(speaker);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/speakers/all");

	}

}
