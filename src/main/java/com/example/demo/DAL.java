package com.example.demo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class DAL {
    private SessionFactory sessionFactory;

    public DAL() {
        Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");
        configuration.addAnnotatedClass(Student.class);
        sessionFactory = configuration.buildSessionFactory();
    }

    public void closeSessionFactory() {
        sessionFactory.close();
    }

    public void createStudent(Student student) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(student);

        session.getTransaction().commit();
        session.close();
    }

    public Student readStudent(int id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        Student student = session.get(Student.class, id);

        session.getTransaction().commit();
        session.close();

        return student;
    }

    public void updateStudent(Student student) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.update(student);

        session.getTransaction().commit();
        session.close();
    }

    public void deleteStudent(Student student) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.delete(student);

        session.getTransaction().commit();
        session.close();
    }

    public List<Student> getAllStudents() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        List<Student> students = session.createQuery("FROM Student", Student.class).getResultList();

        session.getTransaction().commit();
        session.close();

        return students;
    }
}
