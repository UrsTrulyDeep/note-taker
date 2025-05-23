<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Note Taker : Home page</title>
  <%@include file="all_js_css.jsp"%>
</head>
<body>

  <div class="container">
    <%@include file="navbar.jsp"%>
    <br>

    <div class="card border-0 shadow-sm bg-light py-5 px-4">
      <img alt="Notepad" class="img-fluid mx-auto d-block" style="max-width: 400px;" src="img/notepad.png">
      <h1 class="text-dark text-uppercase text-center mt-4">Jot Down What Matters</h1>

      <div class="text-center mt-3">
        <a href="add_notes.jsp" class="btn btn-warning">Write One</a>
      </div>
    </div>

  </div>

</body>
</html>
