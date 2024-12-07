<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-12-02
  Time: 오후 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</style>
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
<h2 class="textColor">My Recipe</h2>
<nav class="navbar navbar-expand-lg custom-table">
    <div class="container-fluid">

        <div class="d-flex custom-container">
            <input type="hidden" name="sort" value="">
            <button class="btn btn-secondary custom-container" type="button" onclick="sortByName()">
                <img src="img/sort-alpha-down.svg" alt="sort alphabet"/>
            </button>

            <a class="btn btn-secondary" href="add">
                <img src="img/plus-lg.svg" alt="plus sign"/>
            </a>
            <input class="form-control me-2 ms-2" type="search" placeholder="Search" name="namesearch" id="namesearch">
            <button class="btn btn-secondary" onclick="searchByName()">Search</button>
        </div>
        <br>

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
                    <th>Main Ingredient</th>
                    <th>Prep Time (min)</th>
                    <th>Difficulty Level</th>
                    <th>Category</th>
                    <th>Views</th>
                    <th>Reg Date</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Spaghetti Bolognese</td>
                    <td>Ground Beef</td>
                    <td>30</td>
                    <td>3</td>
                    <td>Italian</td>
                    <td>120</td>
                    <td>2024-12-03</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Chicken Salad</td>
                    <td>Chicken Breast</td>
                    <td>20</td>
                    <td>2</td>
                    <td>Salad</td>
                    <td>98</td>
                    <td>2024-12-02</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Pancakes</td>
                    <td>Flour</td>
                    <td>15</td>
                    <td>1</td>
                    <td>Breakfast</td>
                    <td>150</td>
                    <td>2024-12-01</td>
                </tr>
                </tbody>

            </table>

        </div>
    </div>
</div>
</body>
</html>
