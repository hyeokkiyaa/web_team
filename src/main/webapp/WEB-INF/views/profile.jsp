<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-12-03
  Time: 오후 7:35
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" type="text/css" href="css/background.css">
<link rel="stylesheet" type="text/css" href="css/world.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    .textColor{
        color: white;
    }
</style>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Profile</title>
</head>
<jsp:include page="header.jsp" />

<body style="opacity: 1;
    background-image: url('img/background.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    height: 100vh;
    background-color: black;
    color: black;">
<h2 class="textColor">My Profile</h2>
<c:if test="${not empty sessionScope.login}">
<section>
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                             class="rounded-circle img-fluid" style="width: 150px;">
                        <h5 class="my-3">${sessionScope.login.userid}</h5>

                    </div>
                </div>
                <div class="card mb-4 mb-lg-0">
                    <div class="card-body p-0">
                        <ul class="list-group list-group-flush rounded-3">
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fas fa-globe fa-lg text-warning"></i>
                                <p class="mb-0">${sessionScope.login.website}</p>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
                                <p class="mb-0">${sessionScope.login.instagram}</p>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>
                                <p class="mb-0">${sessionScope.login.facebook}</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Full Name</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${sessionScope.login.username}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${sessionScope.login.email}</p>
                            </div>
                        </div>
                        <hr>

                    </div>
                </div>
                <div class="row d-flex">
                    <!-- 이미지 1과 이미지 2가 바로 옆에 배치됨 -->
                    <div class="col-md-6">
                        <div class="card mb-4 mb-md-0">
                            <div class="card-body">
                                <img src="img/foodmain.jpeg"
                                     alt="Representative"
                                     class="img-fluid rounded w-100"
                                     style="height: 200px; object-fit: cover;">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card mb-4 mb-md-0">
                            <div class="card-body">
                                <img src="img/foodmain2.jpg"
                                     alt="Representative"
                                     class="img-fluid rounded w-100"
                                     style="height: 200px; object-fit: cover;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</c:if>>
</body>
</html>
