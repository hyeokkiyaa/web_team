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
</style>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>World list</title>
</head>
<jsp:include page="header.jsp" />
<body>
<h2>World Recipe</h2>
<nav class="navbar navbar-expand-lg custom-table">
  <div class="container-fluid">

    <div class="d-flex custom-container">
      <input type="hidden" name="sort" value="">
      <button class="btn btn-secondary custom-container" type="button" onclick="sortByName()">
        <img src="img/sort-alpha-down.svg" alt="sort alphabet" />
      </button>

      <input class="form-control me-2 ms-2" type="search" placeholder="Search" name="namesearch" id="namesearch">
      <button class="btn btn-secondary" onclick="searchByName()">Search</button>
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
        <tbody>
        <tr>
          <td>1</td>
          <td>Spaghetti Bolognese</td>
          <td>Ground beef</td>
          <td>30</td>
          <td>3</td>
          <td>Italian</td>
          <td>hykwon</td>
          <td>120</td>
          <td>2024-12-03</td>
        </tr>
        <tr>
          <td>2</td>
          <td>Chicken Curry</td>
          <td>Chicken</td>
          <td>40</td>
          <td>4</td>
          <td>Indian</td>
          <td>minju</td>
          <td>98</td>
          <td>2024-12-02</td>
        </tr>
        <tr>
          <td>3</td>
          <td>Vegetable Stir-fry</td>
          <td>Bell peppers</td>
          <td>20</td>
          <td>2</td>
          <td>Asian</td>
          <td>jiyoung</td>
          <td>150</td>
          <td>2024-12-01</td>
        </tr>
        <tr>
          <td>4</td>
          <td>Cheese Pizza</td>
          <td>Pizza dough</td>
          <td>25</td>
          <td>2</td>
          <td>Italian</td>
          <td>seojin</td>
          <td>220</td>
          <td>2024-11-30</td>
        </tr>
        <tr>
          <td>5</td>
          <td>Beef Tacos</td>
          <td>Ground beef</td>
          <td>15</td>
          <td>2</td>
          <td>Mexican</td>
          <td>hyunjoo</td>
          <td>180</td>
          <td>2024-11-29</td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
</body>
</html>
