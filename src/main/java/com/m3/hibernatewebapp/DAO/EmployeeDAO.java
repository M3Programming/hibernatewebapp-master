package com.m3.hibernatewebapp.DAO;

import com.m3.hibernatewebapp.Model.Employee;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author MJ
 */
public class EmployeeDAO {

    public void saveEmployee(Employee employee) {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sf = cfg.addAnnotatedClass(Employee.class).buildSessionFactory();
        Session session = sf.openSession();

        try {

            session.beginTransaction();
            session.persist(employee);
            session.getTransaction().commit();
      
        } catch (HibernateException e) {
            System.out.print(e);
        }
    }
}
