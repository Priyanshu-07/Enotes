package com.Enotes.Controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Enotes.Dao.UserDao;
import com.Enotes.Entity.Notes;
import com.Enotes.Entity.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/addnotes")
	public String addPage()
	{
		return "add_notes";
	}
	
	@RequestMapping("/viewnotes")
	public String viewPage(HttpSession session, Model m)
	{
		User us = (User) session.getAttribute("user");
		List<Notes> lists = userDao.getNotesByUser(us);
		m.addAttribute("lists", lists);
		return "view_notes";
	}
	
	
	@RequestMapping("/editnotes")
	public String editnotes(@RequestParam("id") int id,Model model)
	{
			Notes notes = (Notes)userDao.getNotesById(id);
			model.addAttribute("notes", notes);
		return "edit_notes";
	}
	
	@RequestMapping(path="/saveNotes", method= RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes notes, HttpSession session)
	{
		User us =(User)session.getAttribute("user");
		notes.setUser(us);
		notes.setNoteDate(LocalDateTime.now().toString());
		userDao.saveNotes(notes);
		session.setAttribute("msge", "Note Added Successfully");
		return"redirect:/user/addnotes";
	}
	
	@RequestMapping("/deleteNotes")
	public String deleteNotes(@RequestParam("id") int id,HttpSession session)
	{
		userDao.deleteNotes(id);
		session.setAttribute("msge", "Delete Note Successfully");
		return "redirect:/user/viewnotes";
	}
	
	@RequestMapping(path="/updatenotes", method=RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes notes,HttpSession session)
	{	
		User us =(User)session.getAttribute("user");
		notes.setUser(us);
		notes.setNoteDate(LocalDateTime.now().toString());
		userDao.updateNotes(notes);
		session.setAttribute("msge", "Note Updated Successfully");
		return"redirect:/user/viewnotes";
	}
	
	
}
