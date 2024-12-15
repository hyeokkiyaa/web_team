<%--
  Created by IntelliJ IDEA.
  User: zionk
  Date: 2024-12-06
  Time: 오전 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Recipe</title>
    <link rel="stylesheet" type="text/css" href="css/background.css">
    <link rel="stylesheet" type="text/css" href="css/add_edit.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
    .form-signin {
        max-width: 500px;
        padding: 15px;
        background-color: white;
        opacity: 0.9;
        border-radius: 10px;
    }

    .textColor {
        color: black;
    }
    h2 {
        text-align: center;
        padding: 20px 0;
        font-weight: bold;
        font-family: "Bauhaus 93";
        color: black;
    }
</style>
<jsp:include page="header.jsp"/>
<body style="opacity: 1;
    background-image: url('img/background.png');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    height: 200vh;
    background-color: black;
    color: black;">
<div class="form-container textColor form-signin">
    <h2>ADD Your Recipe!</h2>
    <form action="addok" method="post">
        <div class="mb-3">
            <label for="recipe_name" class="form-label">Recipe Name</label>
            <input type="text" class="form-control" id="recipe_name" name="recipe_name" required>
        </div>
        <div class="mb-3">
            <label for="main_ingredient" class="form-label">Main Ingredient</label>
            <input type="text" class="form-control" id="main_ingredient" name="main_ingredient" required>
        </div>
        <div class="mb-3">
            <label for="ingredients" class="form-label">Ingredients</label>
            <textarea class="form-control" id="ingredients" name="ingredients" rows="10" required></textarea>
        </div>
        <div class="mb-3">
            <label for="cooking_order" class="form-label">Cooking Order</label>
            <textarea class="form-control" id="cooking_order" name="cooking_order" rows="15" required></textarea>
        </div>
        <div class="mb-3">
            <label for="prep_time" class="form-label">Preparation Time (minutes)</label>
            <input type="number" class="form-control" id="prep_time" name="prep_time" min="0" required>
        </div>
        <div class="mb-3">
            <label for="difficulty_level" class="form-label">Difficulty Level (1-5)</label>
            <input type="number" class="form-control" id="difficulty_level" name="difficulty_level" min="1" max="5" required>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Category</label>
            <select class="form-select" id="category" name="category" required>
                <option value="Korean">Korean</option>
                <option value="Italian">Italian</option>
                <option value="Mexican">Mexican</option>
                <option value="Japanese">Japanese</option>
                <option value="American">American</option>
                <option value="Chinese">Chinese</option>
                <option value="Indian">Indian</option>
                <option value="Dessert">Dessert</option>
                <option value="Seafood">Seafood</option>
                <option value="Vegetarian">Vegetarian</option>
                <option value="Vegan">Vegan</option>
                <option value="Appetizer">Appetizer</option>
                <option value="Beverage">Beverage</option>
                <option value="Etc">Etc</option>
            </select>
        </div>

        <div class="text-center">
            <button type="button" class="btn btn-primary" onclick="history.back()">Back</button>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
</body>
</html>
