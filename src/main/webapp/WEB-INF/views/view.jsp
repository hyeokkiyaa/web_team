<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-12-02
  Time: 오후 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../css/background.css">
<link rel="stylesheet" type="text/css" href="../css/world.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    .textColor{
        color: white;
    }

    .view-box {
        width: 70%;
        padding: 15px;
        background-color: white;
        opacity: 0.95;
        border-radius: 10px;
        margin: 0 auto;
        position: relative;
    }
</style>
<html>
<head>
    <title>View Recipe</title>
</head>
<jsp:include page="header2.jsp"/>
<body style="opacity: 1;
    background-image: url('../img/background.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    height: 100vh;
    background-color: black;
    color: black;">
<c:if test="${not empty world}">
<h2 class="textColor">${world.recipe_name}</h2>
<main class="view-box custom-container">
    <p><strong>Main Ingredient:</strong> ${world.main_ingredient}</p>
    <p><strong>Prep Time (min):</strong> ${world.prep_time}</p>
    <p><strong>Difficulty Level:</strong> ${world.difficulty_level}</p>
    <p><strong>Category:</strong> ${world.category}</p>
    <p><strong>Views:</strong> ${world.cnt}</p>
    <p><strong>Reg Date:</strong> ${date}</p>
</main>
</c:if>

<c:if test="${empty world}">
    <p>해당 레시피를 찾을 수 없습니다.</p>
</c:if>
</body>
</html>