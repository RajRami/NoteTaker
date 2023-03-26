<%@ page import="org.hibernate.Session" %>
<%@ page import="com.todo.helper.FactoryProvider" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="com.todo.entities.Note" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Notes: Note Taker</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="navbar.jsp" %>
    <h1 class="text-center mt-2">List of notes</h1><br>
    <div class="container text-center">
        <div class="row">
            <%
                Session session1 = FactoryProvider.getFactory().openSession();
                Query query = session1.createQuery("from Note");
                List<Note> list = query.list();
                for (Note n : list) {
            %>
            <div class="col-md-6">
                <div class="card mt-3 p-0 style-3D">
                    <img src="https://source.unsplash.com/400x400?notes" style="max-width: 200px"
                         class="card-img-top mx-auto p-4"
                         alt="Can't Load Image">
                    <div class="card-body">
                        <h5 class="card-title"><%=n.getTitle()%>
                        </h5>
                        <hr>
                        <p class="card-text" style="text-align: justify"><%=n.getContent()%>
                        </p>
                        <p class="card-text" style="text-align: left; color: blue"><%=n.getAddedDate()%>
                        </p>
                        <div class="container text-center">
                            <a href="edit.jsp?note_id=<%=n.getId()%>" class="btn btn-outline-primary">Edit</a>
                            <a href="DeleteServlet?note_id=<%=n.getId()%>" class="btn btn-outline-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
                session1.close();
            %>
        </div>
    </div>
</div>
</body>
</html>
