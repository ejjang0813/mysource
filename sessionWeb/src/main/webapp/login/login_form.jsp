<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 	
	String errorMessage = (String) request.getAttribute("errorMessage");
	request.setAttribute("errorMessage", errorMessage);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/menu.jsp"/>

	<h1>로그인</h1>
	<c:choose>
	<c:if test="${sessionScope.errorMessage != null}">
		<span style="color:red">${sessionScope.errorMessage }</span>
	</c:if>
	<c:otherwise>
	<form action="/sessionWeb/login" method="post">
		form action="/sessionWeb/login" method="post">
		ID : <input type="text" name="id"><br> 
		Password : <input type="password" name="password"><br>
		<button type="submit">로그인</button>
	</form>
	</c:otherwise>
	</c:choose>
	<%--
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (errorMessage != null) {
	
	<span style="color:red"><%=errorMessage%></span>
	
		}
	
	<form action="/sessionWeb/login" method="post">
		ID : <input type="text" name="id"><br> 
		Password : <input type="password" name="password"><br>
		<button type="submit">로그인</button>
	</form>--%>
</body>
</html>