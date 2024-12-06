<%--
  Created by IntelliJ IDEA.
  User: zionk
  Date: 2024-12-06
  Time: 오전 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${pageTitle}"/></title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 class="text-center">새 글 작성</h1>
<form action="addok" method="post" class="needs-validation">
    <div class="mb-3">
        <label for="title" class="form-label">제목</label>
        <input type="text" class="form-control" id="title" name="title" required>
    </div>
    <div class="mb-3">
        <label for="writer" class="form-label">글쓴이</label>
        <input type="text" class="form-control" id="writer" name="writer" required>
    </div>
    <div class="mb-3">
        <label for="content" class="form-label">내용</label>
        <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
    </div>
    <div class="text-center mt-3">
        <button type="button" class="btn btn-secondary" onclick="history.back()">취소하기</button>
        <button type="submit" class="btn btn-primary">등록하기</button>
    </div>
</form>
</body>
</html>
