<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="css/background-login.css">

  <link rel="stylesheet" type="text/css" href="css/login.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script>
  function golist() {
    location.href = "world.jsp";
  }
</script>
</head>
<body class="makecenter">
<main class="form-signin w-100 m-auto">
  <form >
    <img class="mb-4" src="img/logo-black.svg" alt="Logo" width="72" height="57">
    <h1 class="logo-title">맛공방</h1>
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Email address</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="button" onclick="golist()">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 맛공방</p>
  </form>
</main>

</body>
</html>
