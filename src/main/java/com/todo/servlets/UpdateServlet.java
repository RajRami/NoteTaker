package com.todo.servlets;

import com.todo.entities.Note;
import com.todo.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "UpdateServlet", value = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int noteId = Integer.parseInt(request.getParameter("noteId"));
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            Session session = FactoryProvider.getFactory().openSession();
            Transaction transaction = session.beginTransaction();

            Note note = (Note) session.get(Note.class, noteId);
            note.setTitle(title);
            note.setContent(content);
            note.setAddedDate(new Date());

            transaction.commit();
            session.close();
            response.sendRedirect("all_notes.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
