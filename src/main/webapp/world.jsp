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

      <form id="sortForm" class="d-flex" method="GET">
        <input type="hidden" name="sort" value="">
        <button class="btn btn-outline-success" type="button" onclick="sortByName()">
          <img src="img/sort-alpha-down.svg" alt="sort alphabet"/>
        </button>
      </form>


    </div>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <table>
          <thead>
          <tr>
            <th>ID</th>
            <th>Recipe Name</th>
            <th>Ingredients</th>
            <th>Prep Time (min)</th>
            <th>Difficulty Level</th>
            <th>Category</th>
            <th>Writer</th>
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
          </tr>
          <tr>
            <td>2</td>
            <td>Chicken Curry</td>
            <td>Chicken</td>
            <td>40</td>
            <td>4</td>
            <td>Indian</td>
            <td>minju</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Vegetable Stir-fry</td>
            <td>Bell peppers</td>
            <td>20</td>
            <td>2</td>
            <td>Asian</td>
            <td>jiyoung</td>
          </tr>
          <tr>
            <td>4</td>
            <td>Cheese Pizza</td>
            <td>Pizza dough</td>
            <td>25</td>
            <td>2</td>
            <td>Italian</td>
            <td>seojin</td>
          </tr>
          <tr>
            <td>5</td>
            <td>Beef Tacos</td>
            <td>Ground beef</td>
            <td>15</td>
            <td>2</td>
            <td>Mexican</td>
            <td>hyunjoo</td>
          </tr>
          </tbody>
        </table>

      </div>
    </div>
  </div>
  </body>
</html>
