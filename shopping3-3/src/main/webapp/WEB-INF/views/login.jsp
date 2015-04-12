<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jsp_header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
</head>
<body>
<div align="center" class="body">
<h2>로그인 화면</h2>
<form:form modelAttribute="user" method="post" action="login.html">
	<spring:hasBindErrors name="user">
		<font color="red"><c:forEach items="${errors.GlobalErrors}" var="error">
			<spring:message code="${error.code}"/>
		</c:forEach></font>
	</spring:hasBindErrors>
	<table>
		<tr height="40px">
			<td>유저ID</td>
			<td><form:input path="userId" cssClass="userId"/>
			<font color="red"><form:errors path="userId" /></font></td>
		</tr>
		<tr height="40px">
			<td>패스워드</td>
			<td><form:input path="password" cssClass="password"/>
			<font color="red"><form:errors path="password" /></font></td>
		</tr>
	</table>
	<table>
		<tr>
			<td align="center"><input type="submit" value="로그인"></td>
			<td align="center"><input type="reset" value="리셋"></td>
		</tr>
	</table>
</form:form></div>
</body>
</html>