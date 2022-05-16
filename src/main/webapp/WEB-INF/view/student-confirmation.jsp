<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Student Confirmation Page</title>
</head>
<body>
The Student is Confirmed by : ${student.firstName} ${student.lastName}
<br><br>
Country :${student.country}
<br><br>
Favorite Language: ${student.favoriteLanguage}
<br><br>
Operating System:${student.operatingSystem}
</body>
</html>
