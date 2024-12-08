<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <!-- Spring MVC Resource Mapping을 활용한 CSS 경로 -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/background-login.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  .form-signin {
    max-width: 330px;
    padding: 15px;
    background-color: white;
    opacity: 0.9;
    border-radius: 10px;
  }
</style>
</head>
<body class="makecenter" style="
        display: flex;
        justify-content: center;
        align-items: center;
        background-image: url('${pageContext.request.contextPath}/img/background.png');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        margin: 0;
        height: 100vh;
        background-color: black;
        color: black;">
<main class="form-signin" style="width: 100%; max-width: 400px;">
  <form method="POST" action="${pageContext.request.contextPath}/login/loginOk">
    <img class="mb-4" src="${pageContext.request.contextPath}/img/logo-black.svg" alt="Logo" width="72" height="57">
    <h1 class="logo-title">맛공방</h1>
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="userid" name="userid" placeholder="Enter your id">
      <label for="userid">User id</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="password" name="password" placeholder="Password">
      <label for="password">Password</label>
    </div>
    <button class="w-100 btn btn-lg btn-secondary" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 맛공방</p>
  </form>
</main>
</body>

</html>
