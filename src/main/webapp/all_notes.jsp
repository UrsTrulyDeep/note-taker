<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>All Notes: Note Taker</title>
  <%@include file="all_js_css.jsp"%>
</head>
<body>

  <div class="container">
    <%@include file="navbar.jsp"%>
    <br>
    <h2 class="text-uppercase text-dark mb-4">Your Saved Notes</h2>

    <div class="row">
      <div class="col-12">

        <%
          Session s = FactoryProvider.getFactory().openSession();
          Query q = s.createQuery("from Note");
          List<Note> list = q.list();
          for (Note note : list) {
        %>

        <div class="card bg-light shadow-sm rounded mb-4">
          <img class="card-img-top mx-auto d-block mt-4" style="max-width:100px;" src="img/notepad.png" alt="Note image">
          <div class="card-body px-4">
            <h4 class="card-title text-primary"><%= note.getTitle() %></h4>
            <p class="card-text text-muted"><%= note.getContent() %></p>
            <p class="text-end mb-3"><small class="text-secondary">Added on: <%= note.getAddedDate()  %></small></p>
            <div class="text-center">
              <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-outline-danger me-2">Delete</a>
              <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-outline-success">Edit</a>
            </div>
          </div>
        </div>

        <%
          }
          s.close();
        %>

      </div>
    </div>

  </div>
</body>
</html>
