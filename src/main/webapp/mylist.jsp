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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<html>
<head>
    <title>My List</title>
</head>
<jsp:include page="header.jsp" />
<body>
<h2>My Recipe</h2>

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
                </tr>
                <tr>
                    <td>2</td>
                    <td>Chicken Salad</td>
                    <td>Chicken Breast</td>
                    <td>20</td>
                    <td>2</td>
                    <td>Salad</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Pancakes</td>
                    <td>Flour</td>
                    <td>15</td>
                    <td>1</td>
                    <td>Breakfast</td>
                </tr>
                </tbody>

            </table>

        </div>
    </div>
</div>
</body>
</html>
