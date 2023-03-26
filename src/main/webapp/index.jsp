<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="navbar.jsp" %>
    <div class="jumbotron primary-background banner-background">
        <div class="container text-center">
            <div class="row mt-2">
                <h3 class="display-3">A better online to-do list app for work</h3>
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <h4>Note Taker makes it easier for a team to plan their work by using online to-do lists.
                    </h4>
                    <h2>A simple to-do list maker that meets your team’s needs</h2>
                    <h4>
                        create a to-do list as simple or detailed as you need. Everything in Note Taker starts with a
                        task,
                        which is
                        an actionable to-do that can stand alone or be a building block for bigger projects. Connect the
                        tasks
                        on
                        your to-do lists back to larger projects, loop in teammates, and share real-time updates online.
                    </h4>
                    <a href="add_note.jsp" class="btn btn-outline-primary">Add Note</a>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</div>

</body>
</html>