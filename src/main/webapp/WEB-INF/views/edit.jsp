<!DOCTYPE html>
<html>
<head>
    <title>Edit Recipe</title>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <link rel="stylesheet" type="text/css" href="css/background.css">
    <link rel="stylesheet" type="text/css" href="css/world.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        body {
            background-image: url('img/background.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            color: black;
        }
        h1 {
            text-align: center;
            color: white;
        }
    </style>
</head>
<jsp:include page="header2.jsp"/>
<body style="opacity: 1;
    background-image: url('../img/background.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    height: 130vh;
    background-color: black;
    color: black;">
<h1>Edit Your Recipe</h1>
<div class="form-container">
    <form:form modelAttribute="world" action="../editok" method="post">
        <form:hidden path="id" />
<%--        <input type="hidden" name="id" value="${recipe.id}">--%>

        <div class="mb-3">
            <label for="recipe_name" class="form-label">Recipe Name</label>
            <form:input path="recipe_name"/>
        </div>

        <div class="mb-3">
            <label for="main_ingredient" class="form-label">Main Ingredient</label>
            <form:input path="main_ingredient" />
<%--            <input type="text" class="form-control" id="main_ingredient" name="main_ingredient" value="${recipe.main_ingredient}" required>--%>
        </div>

        <div class="mb-3">
            <label for="ingredients" class="form-label">Ingredients</label>
            <form:textarea path="ingredients" rows="4" />
<%--            <textarea class="form-control" id="ingredients" name="ingredients" rows="4" required>${recipe.ingredients}</textarea>--%>
        </div>

        <div class="mb-3">
            <label for="cooking_order" class="form-label">Cooking Order</label>
            <form:textarea path="cooking_order" rows="4" />
<%--            <textarea class="form-control" id="cooking_order" name="cooking_order" rows="4" required>${recipe.cooking_order}</textarea>--%>
        </div>

        <div class="mb-3">
            <label for="prep_time" class="form-label">Preparation Time (minutes)</label>
            <form:input path="prep_time" />
<%--            <input type="number" class="form-control" id="prep_time" name="prep_time" value="${recipe.prep_time}" required>--%>
        </div>

        <div class="mb-3">
            <label for="difficulty_level" class="form-label">Difficulty Level</label>
            <form:input path="difficulty_level" />
<%--            <input type="number" class="form-control" id="difficulty_level" name="difficulty_level" value="${recipe.difficulty_level}" required>--%>
        </div>

        <div class="mb-3">
            <label for="category" class="form-label">Category</label>
            <form:input path="category" />
<%--            <input type="text" class="form-control" id="category" name="category" value="${recipe.category}" required>--%>
        </div>

        <button type="button" class="btn btn-primary" onclick="history.back()">Back</button>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>
