<%-- 
    Document   : signUp
    Created on : May 24, 2021, 7:10:03 PM
    Author     : HuuVong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
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
        <div class="alert alert-success">
            <strong>${errorString}</strong>
        </div>

        <form action="${pageContext.request.contextPath}/signup" method="POST" style="width: 50%; margin-left: 50px">
            <div class="form-group">
                <label for="name">Full name:</label>
                <input name="name" class="form-control" placeholder="Enter name" id="name">
            </div>
            <div class="form-group">
                <label for="name">Gender:</label>
                <div class="form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="M" id="male" checked="checked">Male
                    </label>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="F" id="female">Female
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="user">Username:</label>
                <input name="userName" class="form-control" placeholder="Enter username" id="user">
            </div>
            <div class="form-group">
                <label for="pass">Password:</label>
                <input name="password"  class="form-control" placeholder="Enter password" id="pass">
            </div>
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </form>

        <jsp:include page="../DAO/_footer.jsp"></jsp:include>
    </body>
</html>
