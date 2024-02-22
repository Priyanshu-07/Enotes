package com.Enotes.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Notes {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String description;
	private String noteDate;
	@ManyToOne
	private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getNoteDate() {
		return noteDate;
	}
	public void setNoteDate(String noteDate) {
		this.noteDate = noteDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notes(int id, String title, String description, String noteDate, User user) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.noteDate = noteDate;
		this.user = user;
	}
	@Override
	public String toString() {
		return "Notes [id=" + id + ", title=" + title + ", description=" + description + ", noteDate=" + noteDate
				+ ", user=" + user + "]";
	}
	
	
		
}
	
