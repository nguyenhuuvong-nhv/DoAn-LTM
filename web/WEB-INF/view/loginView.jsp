<%-- 
    Document   : loginView
    Created on : May 7, 2021, 10:53:24 PM
    Author     : HuuVong
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <style>
            .fakeimg {
                height: 200px;
                background: #aaa;
            }
            
            body{
                width: 80%;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <jsp:include page="../DAO/_header.jsp"></jsp:include>
        <jsp:include page="../DAO/_menu.jsp"></jsp:include>

            <form class="px-4 py-3" method="POST" action="${pageContext.request.contextPath}/login">
                <div class="mb-3">
                    <label for="exampleDropdownFormEmail1" class="form-label">Username</label>
                    <input name="userName" value= "${user.userName}" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
                </div>
                <div class="mb-3">
                    <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                    <input  name="password" value= "${user.password}" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
                </div>
                <div class="mb-3">
                    <div class="form-check">
                        <input type="checkbox" name="rememberMe" value= "Y"  class="form-check-input" id="dropdownCheck">
                        <label class="form-check-label" for="dropdownCheck">
                            Remember me
                        </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/signup">New around here? Sign up</a>
            <a class="dropdown-item" href="#">Forgot password?</a>
        <jsp:include page="../DAO/_footer.jsp"></jsp:include>
    </body>
</html>

