package com.Enotes.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Enotes.Entity.Notes;
import com.Enotes.Entity.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public int saveUser(User user) {
		
		int i =(Integer)hibernateTemplate.save(user);
		return i;
	}

	@Override
	public User login(String email, String password) {
		
		String sql = "from User where email=:em and password=:pwd";
		User user = (User)hibernateTemplate.execute(session->{
			Query<User> query = session.createQuery(sql,User.class);
			query.setParameter("em", email);
			query.setParameter("pwd", password);
			return query.uniqueResult();
		});
		
		return user;
	}

	@Override
	public int saveNotes(Notes notes) {
		// TODO Auto-generated method stub
		int i = (Integer)hibernateTemplate.save(notes);
		return i;
	}

	@Override
	public List<Notes> getNotesByUser(User user) {
		// TODO Auto-generated method stub
		String sql = "from Notes where user=:us";
		List<Notes> list =hibernateTemplate.execute(session->{
			Query<Notes> q = session.createQuery(sql, Notes.class);
			q.setParameter("us", user);
			return q.getResultList();
		});
		return list;
	}
	

	@Override
	public Notes getNotesById(int id) {
		// TODO Auto-generated method stub
		Notes notes= hibernateTemplate.get(Notes.class,id);
		return notes;
	}

	@Override
	public void deleteNotes(int id) {
		// TODO Auto-generated method stub
		Notes notes = hibernateTemplate.get(Notes.class, id);
		hibernateTemplate.delete(notes);
		
	}

	@Override
	public void updateNotes(Notes notes) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(notes);
	}

}
