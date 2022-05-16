<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 16-05-2022
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Confirmation Page</title>
</head>
<body>
The Customer is confirmed as: ${customer.firstName} ${customer.lastName}
<br><br>
Free Passes: ${customer.freePasses}
<br><br>
Postal Code:${customer.postalCode}
<br><br>
Course code:${customer.coureCode}
</body>
</html>
