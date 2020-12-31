package com;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/client")
public class Client {
	@Autowired
	private HibernateUtility hibernateUtility;
	
	public HibernateUtility getHibernateUtility() {
		return hibernateUtility;
	}

	public void setHibernateUtility(HibernateUtility hibernateUtility) {
		this.hibernateUtility = hibernateUtility;
	}
	@RequestMapping(method=RequestMethod.GET)
	public void oneclient() {
		
		Session session=getHibernateUtility().currentSession();
		//Transaction tx=session.beginTransaction();

		Users user = new Users();
		user.setUid(101);
		user.setUname("Naveen");
		user.setUpass("naveen");
		user.setAddress("Karur");
		
		Transaction tx = session.beginTransaction();
		try {
			session.save(user);
			tx.commit();
			//return 1;
		}catch(Exception e) {
			e.printStackTrace();
			tx.rollback();
			//return 0;
		}
	}
}
