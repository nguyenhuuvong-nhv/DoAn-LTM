<%-- 
    Document   : productInfo
    Created on : May 24, 2021, 10:32:20 AM
    Author     : HuuVong
--%>

<%@page import="model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product detail</title>
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
            <!--   product  -->
        <section id="product" class="py-3">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <img src="https://www.muradvietnam.vn/${product.img}" alt="product" class="img-fluid">
                        <div class="form-row pt-4 font-size-16 font-baloo">
                            <div class="col">
                                <button type="submit" class="btn btn-danger form-control">Proceed to Buy</button>
                            </div>
                            <div class="col">
                                <button type="submit" class="btn btn-warning form-control">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 py-5">
                        <h5 class="font-baloo font-size-20">${product.name}</h5>


                        <hr class="m-0">

                        <!---    product price       -->
                        <table class="my-3">
                            <tr class="font-rale font-size-14">
                                <td>Giá:   ${product.price} đ</td>
                            </tr>
                        </table>
                        <!---    !product price       -->

                        <!--    !policy -->
                        <hr>

                        <!-- order-details -->
                        <div id="order-details" class="font-rale d-flex flex-column text-dark">
                            <small>${product.description}</small>

                        </div>
                        <!-- !order-details -->

                    </div>

                </div>
            </div>
        </section>
    <jsp:include page="../DAO/_footer.jsp"></jsp:include>
</body>
</html>
