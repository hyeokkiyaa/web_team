<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Alert</title>
    <script>
        const msg = "<c:out value='${msg}'/>";
        const url = "<c:out value='${pageContext.request.contextPath}/${url}'/>";
        alert(msg);
        location.href = url;
    </script>
</head>
<body>
</body>
</html>
