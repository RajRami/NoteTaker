<%@ page import="com.todo.helper.FactoryProvider" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.todo.entities.Note" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Note: Note Taker</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="navbar.jsp" %>
    <h1 class="text-center mt-2">Edit Note</h1><br>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <%
                    Session session1 = FactoryProvider.getFactory().openSession();
                    int noteID = Integer.parseInt(request.getParameter("note_id"));
                    Note note = (Note) session1.get(Note.class, noteID);
                    session1.close();
                %>
                <div class="card m-0 p-0 style-3D">
                    <img src="https://source.unsplash.com/400x400?notes" style="max-width: 200px"
                         class="card-img-top mx-auto p-4"
                         alt="Can't Load Image">
                    <div class="card-body">
                        <form action="UpdateServlet" method="post">
                            <input name="noteId" value="<%=note.getId()%>" type="hidden">
                            <div class="mb-3">
                                <label for="title" class="form-label bold">Title</label>
                                <input type="text" class="form-control" value="<%=note.getTitle()%>" id="title"
                                       name="title"
                                       required>
                            </div>
                            <hr>
                            <div class="mb-3">
                                <label for="content" class="form-label bold">Content</label>
                                <textarea rows="6" class="form-control" id="content" name="content"
                                          required><%=note.getContent()%></textarea>
                            </div>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-success">Update</button>
                                <a href="all_notes.jsp" class="btn btn-outline-primary">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
</body>
</html>
