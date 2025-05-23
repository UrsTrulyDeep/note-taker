<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Edit Note</title>
  <%@include file="all_js_css.jsp"%>
</head>
<body>
  <div class="container mt-4">
    <%@include file="navbar.jsp"%>
    <h2 class="text-center text-primary mb-4">Update Your Note</h2>

    <%
      int noteId = Integer.parseInt(request.getParameter("note_id").trim());
      Session s = FactoryProvider.getFactory().openSession();
      Note note = (Note) s.get(Note.class, noteId);
    %>

    <form action="UpdateServlet" method="post" class="bg-light p-4 rounded shadow-sm">
      <input value="<%=note.getId()%>" name="noteId" type="hidden" />

      <div class="form-group mb-3">
        <label for="title" class="form-label">Title</label>
        <input 
          name="title" 
          required 
          type="text" 
          class="form-control" 
          id="title"
          placeholder="Update note title"
          value="<%=note.getTitle()%>" />
      </div>

      <div class="form-group mb-4">
        <label for="content" class="form-label">Content</label>
        <textarea 
          name="content" 
          required 
          id="content"
          placeholder="Update note details"
          class="form-control" 
          style="height: 250px;"><%=note.getContent()%></textarea>
      </div>

      <div class="text-center">
        <button type="submit" class="btn btn-outline-success px-4">Save Changes</button>
      </div>
    </form>
  </div>
</body>
</html>
