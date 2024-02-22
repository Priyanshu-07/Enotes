package com.Enotes.Dao;

import java.util.List;

import com.Enotes.Entity.Notes;
import com.Enotes.Entity.User;

public interface UserDao {

	public int saveUser(User user);
	
	public User login(String email, String password);
	
//	For Notes 
	
	public int saveNotes(Notes notes);
	
	public List<Notes> getNotesByUser(User user);
	
	public Notes getNotesById(int id);
	
	public void deleteNotes(int id);
	
	public void updateNotes(Notes notes);
	
	
	
}
