<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Add Notes</title>
  <%@include file="all_js_css.jsp"%>
</head>
<body>

  <div class="container">
    <%@include file="navbar.jsp"%>
    <br>

    <div class="card bg-light border-0 shadow p-4">
      <h2 class="text-center text-dark mb-4">Create a New Note</h2>

      <!-- Note form -->
      <form action="SaveNoteServlet" method="post">

        <div class="form-group mb-3">
          <label for="title" class="form-label">Title</label>
          <input 
            name="title"
            required 
            type="text"
            class="form-control rounded"
            id="title" 
            placeholder="Type your note title here" />
        </div>

        <div class="form-group mb-4">
          <label for="content" class="form-label">Details</label>
          <textarea 
            name="content"
            required 
            id="content"
            placeholder="Write your note content here"
            class="form-control rounded"
            style="height: 300px;"></textarea>
        </div>

        <div class="text-center">
          <button type="submit" class="btn btn-success px-4">Save Note</button>
        </div>

      </form>
    </div>

  </div>

</body>
</html>
