<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
  <a class="navbar-brand text-warning" href="index.jsp">Note Taker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto">
      <li class="nav-item active">
        <a class="nav-link text-light" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="add_notes.jsp">Add a Note</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="all_notes.jsp">Show Notes</a>
      </li>
    </ul>
    <form class="form-inline d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-warning" type="submit">Search</button>
    </form>
  </div>
</nav>
