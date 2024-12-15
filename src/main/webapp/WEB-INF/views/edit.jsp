<!DOCTYPE html>
<html>
<head>
    <title>Edit Recipe</title>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <link rel="stylesheet" type="text/css" href="css/background.css">
    <link rel="stylesheet" type="text/css" href="css/add_edit.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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

        .make-center {
            margin: auto;
            marigin-top: 50px;
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
    height: 200vh;
    background-color: black;
    color: black;

">

<div class="form-container textColor form-signin make-center">
    <h2>Edit Your Recipe</h2>

    <form:form modelAttribute="world" action="../editok" method="post">
        <form:hidden path="id"/>
        <%--        <input type="hidden" name="id" value="${recipe.id}">--%>

        <div class="mb-3">
            <label for="recipe_name" class="form-label">Recipe Name</label>
            <form:input path="recipe_name" cssClass="form-control"/>
        </div>

        <div class="mb-3">
            <label for="main_ingredient" class="form-label">Main Ingredient</label>
            <form:input path="main_ingredient" cssClass="form-control"/>
        </div>

        <div class="mb-3">
            <label for="ingredients" class="form-label">Ingredients</label>
            <form:textarea path="ingredients" cssClass="form-control" rows="10"/>
        </div>

        <div class="mb-3">
            <label for="cooking_order" class="form-label">Cooking Order</label>
            <form:textarea path="cooking_order" cssClass="form-control" rows="15"/>
        </div>

        <div class="mb-3">
            <label for="prep_time" class="form-label">Preparation Time (minutes)</label>
            <form:input path="prep_time" cssClass="form-control"/>
        </div>

        <div class="mb-3">
            <label for="difficulty_level" class="form-label">Difficulty Level</label>
            <form:input path="difficulty_level" cssClass="form-control"/>
        </div>

        <div class="mb-3">
            <label for="category" class="form-label">Category</label>
            <form:select path="category" cssClass="form-select" id="category">
                <form:option value="Korean" label="Korean"/>
                <form:option value="Italian" label="Italian"/>
                <form:option value="Mexican" label="Mexican"/>
                <form:option value="Japanese" label="Japanese"/>
                <form:option value="American" label="American"/>
                <form:option value="Chinese" label="Chinese"/>
                <form:option value="Indian" label="Indian"/>
                <form:option value="Dessert" label="Dessert"/>
                <form:option value="Seafood" label="Seafood"/>
                <form:option value="Vegetarian" label="Vegetarian"/>
                <form:option value="Vegan" label="Vegan"/>
                <form:option value="Appetizer" label="Appetizer"/>
                <form:option value="Beverage" label="Beverage"/>
                <form:option value="Etc" label="Etc"/>
            </form:select>
        </div>


        <button type="button" class="btn btn-primary" onclick="history.back()">Back</button>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>
</body>
</html>
