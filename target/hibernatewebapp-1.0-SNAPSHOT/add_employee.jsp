<%-- 
    Document   : addemployee
    Created on : May 1, 2024, 8:48:34 PM
    Author     : MJ
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
              crossorigin="anonymous">
    </head>

</head>
<body>
    <nav class="navbar navbar-expand-md bg-primary navbar-dark">
        
        <div class="container-fluid">
    <a class="navbar-brand" href="#">Employee Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">List of Employee</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" aria-disabled="true">About Us</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-success" type="submit">Search</button>
      </form>
    </div>
  </div>
    </nav>
       <h1 class ="text-center">Add new Employee</h1>   
    <div class = "container">
        <div class ="row">
            <div class ="col-lg-6 col-md-6 col-lg-6 container justify-content-center card">
                             <div class="card-body">
                    <form action="<%=request.getContextPath()%>/" method="post">
                        <div class="mb-3">
                            <label class="form-label">First Name: </label>
                            <input type="text" 
                                   name="firstName" 
                                   class="form-control" 
                                   placeholder= "Firstname"/>
                        </div>
                        <div class ="mb-3">
                            <label class="form-label">Last Name: </label>
                            <input type="text" 
                                   name="lastName" 
                                   class="form-control" 
                                   placeholder= "Lastname" required/>
                        </div>  
                        <div class ="mb-3">
                            <label class="form-label">Department: </label>
                            <input type="text" 
                                   name="department" 
                                   class="form-control"
                                   th:field="*{lname}"
                                   placeholder= "Departmet" required/>
                        </div>
                        <div class ="box-footer">
                            <button type="submit" class="btn btn-primary">Add Record</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
