<%-- 
    Document   : productListView
    Created on : May 23, 2021, 1:40:31 PM
    Author     : HuuVong
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Product List</title>
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

        <div class="container">
            <div class="row mt-5">
                <h2 class="list-product-title">${nameCategory}</h2>
                <div class="product-group">
                    <div class="row">
                        <c:forEach items="${productList}" var="product" >
                   
                        <div class="col-md-3 col-sm-6 col-12">
                            <div class="card card-product mb-3">
                                <img class="card-img-top" src="https://www.muradvietnam.vn/${product.img}" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">${product.name}</h5>
                                    <h5 class="card-title">${product.price} đ</h5>
                                    <a href="productInfo?id=${product.code}" class="btn btn-primary">Buy now</a>
                                </div>
                            </div>
                        </div>	
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="../DAO/_footer.jsp"></jsp:include>

    </body>
</html>
