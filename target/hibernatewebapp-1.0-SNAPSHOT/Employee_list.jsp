<%-- 
    Document   : Employee
    Created on : May 3, 2024, 10:39:22 AM
    Author     : Marlon
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:query var ="result" dataSource="hibernatemysql">
    select * from employee
</sql:query>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Employee</title>
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
    <nav class="navbar navbar-expand-sm bg-primary navbar-dark">

        <div class="container-fluid">
            <a class="navbar-brand" href="list">Employee Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="list">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="list">List of Employee</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class ="row">
            <div><h1>List of Employee</h1></div>
            <div class="col-sm-3">
                <a href ="new" class = "btn btn-success">Add Employee</a>
            </div>
            <div class="row">           
                <table class="table table-dark">
                    <thead>
                        <tr class="table-active">
                            <th>ID</th>
                            <th>Firstname</th>
                            <th>Lastname</th>
                            <th>Department</th>
                            <th colspan="2" style="text-align: center">Action</th>
                        </tr>
                    <tbody>
                        <c:forEach items="${result.rows}" var = "employee">
                            <tr>
                                <td>
                                    <c:out value="${employee.empid}"/>
                                </td>
                                <td>
                                    <c:out value="${employee.Employeefname}"/>
                                </td>
                                <td>
                                    <c:out value="${employee.Employeelname}"/>
                                </td>
                                <td>
                                    <c:out value="${employee.Employeedept}"/>
                                </td>
                            </tr>
                            
                        </c:forEach>
                    </tbody>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
