package com.todo.servlets;

import com.todo.entities.Note;
import com.todo.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteServlet", value = "/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int noteId = Integer.parseInt(request.getParameter("note_id"));
            Session session = FactoryProvider.getFactory().openSession();
            Transaction transaction = session.beginTransaction();

            Note note = (Note) session.get(Note.class, noteId);
            session.delete(note);

            transaction.commit();
            session.close();
            response.sendRedirect("all_notes.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
