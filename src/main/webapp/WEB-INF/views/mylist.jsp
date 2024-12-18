<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-12-02
  Time: 오후 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="css/background.css">
<link rel="stylesheet" type="text/css" href="css/world.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    .custom-container {
        width: fit-content;
        margin-left: auto;
        margin-right: 10%;
    }

     .textColor{
         color: white;
     }
    tr {
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    tr:hover {
        background-color: #f0f0f0;
    }

    .select-sort {
        height: 40px;
        width: 100px;
        margin-right: 10px;
    }

    .addition-box {
        height: 40px;
        margin-right: 10px;
        display: flex;
        align-items: center;
    }
</style>

<script>
    function view(id) {
        location.href = "view/" + id;
    }

    function delete_ok(id) {
        var a = confirm("정말로 삭제하겠습니까?");
        if (a) location.href = 'deleteok/' + id;
    }

    function sortByName() {
        let sortby = document.getElementById("sortby").value;

        if (sortby) {
            location.href = "mylist?sort=" + sortby;
        } else {
            console.error("No sort option selected.");
        }
    }

</script>

<html>
<head>
    <title>My List</title>
</head>
<jsp:include page="header.jsp"/>
<body style="opacity: 1;
    background-image: url('img/background.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    height: 100vh;
    background-color: black;
    color: black;">
<%--<c:if test="${not empty sessionScope.login}">--%>

<h2 class="textColor">${sessionScope.login.username}'s Recipe</h2>
<nav class="navbar navbar-expand-lg custom-table">
    <div class="container-fluid">

        <div class="d-flex custom-container">
            <input type="hidden" name="sort" value="">
            <select class="form-select select-sort text-dark" id="sortby" name="sortby">
                <option value="recipe_name">Recipe Name</option>
                <option value="prep_time">Time</option>
                <option value="category">Category</option>
                <option value="difficulty_level_easy">Difficulty(Easy)</option>
                <option value="difficulty_level_difficult">Difficulty(Difficult)</option>
                <option value="cnt">Most Views</option>
                <option value="id">ID</option>
            </select>
            <button class="btn btn-secondary custom-container addition-box" type="button" onclick="sortByName()">
                <img src="img/sort-alpha-down.svg" alt="sort alphabet"/>
            </button>

            <a class="btn btn-secondary addition-box" href="add">
                <img src="img/plus-lg.svg" alt="plus sign"/>
            </a>
            <form action="myListSearch" method="get" class="needs-validation d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" name="recipe_name" id="recipe_name" />
                <button type="submit" class="btn btn-secondary">Search</button>
            </form>
        </div>
        <br>

    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-xs-12 table-responsive">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Recipe Name</th>
                    <th>Main Ingredient</th>
                    <th>Prep Time (min)</th>
                    <th>Difficulty Level</th>
                    <th>Category</th>
                    <th>Views</th>
                    <th>Reg Date</th>
                    <th>Action</th>
                </tr>
                </thead>
                <c:forEach var="item" items="${list}">
                    <tr onclick="view('${item.id}')">
                        <td>${item.id}</td>
                        <td>${item.recipe_name}</td>
                        <td>${item.main_ingredient}</td>
                        <td>${item.prep_time}</td>
                        <td>${item.difficulty_level}</td>
                        <td>${item.category}</td>
                        <td>${item.cnt}</td>
                        <td>
                        <fmt:formatDate value="${item.regdate}" pattern="yyyy-MM-dd" />
                        </td>
                        <td>
                            <a href="edit/${item.id}" class="btn btn-sm"><img src="img/pencil.svg" alt="pencil to edit image"/></a>
                            <a href="javascript:delete_ok('${item.id}')" class="btn btn-sm"><img src="img/trash3.svg" alt="trash image"/></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>

