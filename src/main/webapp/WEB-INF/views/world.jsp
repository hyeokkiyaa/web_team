<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-12-03
  Time: 오후 7:34
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" type="text/css" href="css/background.css">
<link rel="stylesheet" type="text/css" href="css/world.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  .custom-container {
    width: fit-content;
    margin-left: auto;
    margin-right: 10%;
  }

   .textColor{
     color: white;
   }
</style>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>World list</title>
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
<h2 class="textColor">World Recipe</h2>
<nav class="navbar navbar-expand-lg custom-table">
  <div class="container-fluid">

    <div class="d-flex custom-container">
      <input type="hidden" name="sort" value="">
      <button class="btn btn-secondary custom-container" type="button" onclick="sortByName()">
        <img src="img/sort-alpha-down.svg" alt="sort alphabet" />
      </button>

      <form action="listSearch" method="get" class="needs-validation d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" name="recipe_name" id="recipe_name" />
        <button type="submit" class="btn btn-secondary">Search</button>
      </form>
    </div>
    <br>

  </div>
</nav>
<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <table >
        <thead>
        <tr>
          <th>ID</th>
          <th>Recipe Name</th>
          <th>Main Ingredient</th>
          <th>Prep Time (min)</th>
          <th>Difficulty Level</th>
          <th>Category</th>
          <th>Writer</th>
          <th>Views</th>
          <th>Reg Date</th>
        </tr>
        </thead>
        <c:forEach var="item" items="${list}">
          <tr>
            <td>${item.id}</td>
            <td>${item.recipe_name}</td>
            <td>${item.main_ingredient}</td>
            <td>${item.prep_time}</td>
            <td>${item.difficulty_level}</td>
            <td>${item.category}</td>
            <td>${item.userid}</td>
            <td>${item.cnt}</td>
            <td>${item.regdate}</td>
<%--            <td>--%>
<%--              <a href="edit/${item.seq}" class="btn btn-sm btn-warning">글수정</a>--%>
<%--              <a href="javascript:delete_ok('${item.seq}')" class="btn btn-sm btn-danger">글삭제</a>--%>
<%--            </td>--%>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
</div>
</body>
</html>
