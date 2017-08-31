<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wellcome</title>
</head>

<body>
<c:if test="${pageContext.request.userPrincipal.name != null}">
	<form action="${path}/logout" method="POST" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	</form>
</c:if>
<p>Wellcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></p>
<p>${message} hihi!!</p>
<p><a href="${path}/user/list">User List</a></p>
<p><a href="${path}/user/form">Add User</a></p>
<p><a href="${path}/address/list">Address List</a></p>
<p><a href="${path}/address/form">Add Address</a></p>
</body>
</html>