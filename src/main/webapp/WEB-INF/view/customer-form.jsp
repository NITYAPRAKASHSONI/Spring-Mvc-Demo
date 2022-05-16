<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 16-05-2022
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error{
            color: red;
        }
    </style>
</head>
<body>
Fill out form. Asterisk(*) means required.
<form:form action="processForm" modelAttribute="customer">
  First Name:  <form:input path="firstName"></form:input>
    <br><br>
    LastName(*):  <form:input path="lastName"></form:input>
    <form:errors path="lastName" cssClass="error"></form:errors>
    <br><br>
Free Passes:<form:input path="freePasses"></form:input>
    <form:errors path="freePasses" cssClass="error"></form:errors>
    <br><br>
    Postal Code:<form:input path="postalCode"></form:input>
    <form:errors path="postalCode" cssClass="error"></form:errors>
    <br><br>
    Course Code: <form:input path="coureCode"></form:input>
    <br><br>
   <input type="submit" value="Submit"/>
</form:form>

</body>
</html>
