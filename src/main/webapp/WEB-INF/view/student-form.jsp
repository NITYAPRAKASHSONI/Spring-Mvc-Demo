<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 14-05-2022
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Student Registration Page</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
  First Name <form:input path="firstName"></form:input>
  <br><br>
  Last Name <form:input path="lastName"></form:input>

    <br><br>
    Country:
    <form:select path="country">
<%--        <form:option value="Brazil" label="Brazil"></form:option>--%>
<%--        <form:option value="France" label="France"></form:option>--%>
<%--        <form:option value="Germany" label="Germany"></form:option>--%>
<%--        <form:option value="India" label="India"></form:option>--%>

        <form:options items="${student.countryOptions}"></form:options>

    </form:select>
    <br><br>
    Favorite Language:
    Java <form:radiobutton path="favoriteLanguage" value="Java"></form:radiobutton>
    C# <form:radiobutton path="favoriteLanguage" value="C#"></form:radiobutton>
    PHP <form:radiobutton path="favoriteLanguage" value="PHP"></form:radiobutton>
    Python <form:radiobutton path="favoriteLanguage" value="Python"></form:radiobutton>
    <br><br>
    Operating System:
    Linux <form:checkbox path="operatingSystem" value="Linux"></form:checkbox>
    Windows <form:checkbox path="operatingSystem" value="Windows"></form:checkbox>
    Mac Os <form:checkbox path="operatingSystem" value="Mac Os"></form:checkbox>
    <br><br>
    <input type="submit" value="Submit">
</form:form>
</body>
</html>
