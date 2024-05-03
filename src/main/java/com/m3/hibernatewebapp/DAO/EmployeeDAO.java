/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.m3.hibernatewebapp.DAO;

import com.m3.hibernatewebapp.Model.Employee;
import java.util.ArrayList;
import java.util.List;
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
        Configuration config = new Configuration();
        config.configure("hibernate.cfg.xml");
        config.addAnnotatedClass(Employee.class);
        try {
            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                 .applySettings(config.getProperties()).build();
            SessionFactory sf = config.buildSessionFactory(serviceRegistry);
            Session session = sf.openSession();
            Transaction trans = session.beginTransaction();
            session.save(employee);
            trans.commit();

        } catch (HibernateException e) {
            System.out.print(e);
        }
    }
    
    public List<Employee> getAllEmployee() {
        Configuration config = new Configuration();
        config.configure("hibernate.cfg.xml");
        config.addAnnotatedClass(Employee.class);
        
        try {
            SessionFactory sf = config.buildSessionFactory();
            Session session = sf.openSession();
            Transaction transaction = session.beginTransaction();
            session.createQuery("from Employee").getResultList();
            transaction.commit();
            } catch (HibernateException e) {
           System.out.print(e);
        }
        return null;
       
    }
}
