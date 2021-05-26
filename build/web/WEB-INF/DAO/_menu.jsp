<%-- 
    Document   : _menu
    Created on : May 7, 2021, 10:45:28 PM
    Author     : HuuVong
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-bottom: 20px">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/home">MURAD.VN</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/productList">Product List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/userInfo">My Account Info</a>
            </li>   
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
            </li> 
        </ul>
    </div>  
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <form class="form-inline" method="get" action="${pageContext.request.contextPath}/search">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" name="input">
            <button class="btn btn-success" type="submit">Search</button>
        </form>
    </nav>
</nav>