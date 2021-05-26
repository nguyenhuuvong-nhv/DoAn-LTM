<%-- 
    Document   : userInfoView
    Created on : May 13, 2021, 9:16:00 PM
    Author     : HuuVong
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Info</title>
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
        <h3>Hello: ${user.name}</h3>
        User Name: <b>${user.userName}</b>
        <br />
        Gender: ${user.gender } <br />

        <a href="${pageContext.request.contextPath}/logout">Logout</a>

        <form action="${pageContext.request.contextPath}/changepass" method="post" style="width: 50%; margin: 0">
            <h4 class="title-main" style="text-align: center;">CHANGE PASSWORD </h4>
           
            <table class="table">
                <tr>
                <input class="form-control" type="text" name="pass_old" placeholder="old password" value="" required/> <br>
                </tr>
                <tr>
                <input class="form-control" type="text" name="pass_new" placeholder="new password"value="" required/><br>
                </tr>
                <tr >
                    <td colspan="2" align="center"> <input type="submit" name="submit" class="btn btn-primary" value="Update"><br> </td>
                </tr>
                <input type="hidden" name="username" value="${user.userName}">

            </table>
        </form>


        <jsp:include page="../DAO/_footer.jsp"></jsp:include>

    </body>
</html>
