<%-- 
    Document   : index
    Created on : May 7, 2021, 10:50:56 PM
    Author     : HuuVong
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
    <head>
        <meta charset="UTF-8">
        <title>Home Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

            <div class="row" >


                <div class="col-sm-3" >
                    <h3 class="box-title"><i class="fa fa-list"></i> Category</h3>
                    <ul class="nav nav-pills flex-column">
                    <c:forEach items="${categorytList}" var="category" >
                        <li class="nav-item">
                            <a class="nav-link active" href="categoryList?id=${category.categoryID}&name=${category.categoryName}">${category.categoryName}</a>
                        </li>

                    </c:forEach>


                </ul>
                <hr class="d-sm-none">
            </div>
            <!-- Kết thúc cột trái -->

            <!-- Cột giữa -->
            <div class="col-sm-9" >
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://www.muradvietnam.vn/Data/Sites/1/Banner/duoc-my-pham-murad-banner-san-pham.jpg" class="d-block w-100" height="250px" alt="...">
                        </div>
                    </div>
                    <div class="carousel-inner" style="margin-top: 15px">
                        <div class="carousel-item  active">
                            <img src="https://www.muradvietnam.vn/Data/Sites/1/Banner/bannerwebvitaceyes_optimized-(1).jpg" class="d-block w-100" height="250px" alt="...">
                        </div>
                    </div>
                    <div class="carousel-inner" style="margin-top: 15px">
                        <div class="carousel-item  active">
                            <img src="https://www.muradvietnam.vn/Data/Sites/1/Banner/murad-hydrating-toner.jpg" height="250px" class="d-block w-100" alt="...">
                        </div>
                    </div>

                </div>
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
            </div>
            <!-- Kết thúc cột giữa -->



        </div>
    </div>
    <jsp:include page="../DAO/_footer.jsp"></jsp:include>
</body>
</html>
