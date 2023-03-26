<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Note: Note Taker</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="navbar.jsp" %>
    <h1 class="text-center mt-2">Add New Note</h1><br>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card m-0 p-0 style-3D">
                    <img src="https://source.unsplash.com/400x400?notes" style="max-width: 200px"
                         class="card-img-top mx-auto p-4"
                         alt="Can't Load Image">
                    <div class="card-body">
                        <form action="SaveNoteServlet" method="post">
                            <div class="mb-3">
                                <label for="title" class="form-label bold">Title</label>
                                <input type="text" class="form-control" placeholder="Enter title here" id="title"
                                       name="title"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label for="content" class="form-label bold">Content</label>
                                <textarea rows="6" class="form-control" placeholder="Enter content here" id="content"
                                          name="content"
                                          required></textarea>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Add</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</div>
</body>
</html>
