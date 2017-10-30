<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/menu.jsp"/>

<%
HashMap<String, Integer> map = (HashMap)session.getAttribute("cart");
Set<String> keys = map.keySet();
%>
<h2>장바구니에 담은 물건들</h2>
<table>
	<thead>
		<tr>
			<th>제품</th>
			<th>주문개수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${map.get(key) }" var="entry">
			<c:if test="entry.key != 'key'">
				<td>${key }</td>
				<td>${map.key }</td>
			</c:if>
		
		</c:forEach>
		<%--for(String key : keys){ 
			<tr>
				<td><%=key %></td>
				<td><%=map.get(key) %></td>
			</tr>
		} --%>
	</tbody>
</table>
<a href="/sessionWeb/cart/showItems">쇼핑목록이동</a>
<a href="/sessionWeb/logout">로그아웃</a>
</body>
</html>