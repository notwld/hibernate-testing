package com.example.demo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.List;

@WebServlet("/students")
public class StudentServlet extends HttpServlet {
    private DAL dal;

    @Override
    public void init() throws ServletException {
        dal = new DAL();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> students = dal.getAllStudents();

        req.setAttribute("students", students);
        req.getRequestDispatcher("students.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        dal.closeSessionFactory();
    }
}