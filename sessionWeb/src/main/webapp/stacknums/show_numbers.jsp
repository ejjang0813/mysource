<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ArrayList<Integer> list = (ArrayList<Integer>) session.getAttribute("numList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/menu.jsp"/>
s
	<!-- 
	1. Session에서 numberList를 조회
	2. 반복문을 이용해 list내의 숫자들을 출력.
 -->
	<p>
		<a href="/sessionWeb/stacknums/stack">숫자누적 요청</a> <a
			href="/sessionWeb/stacknums/removenums">누적된 숫자 제거</a>
	</p>


	<h1>출력결과</h1>
<c:if test="${list == null }">
	누적된 숫자가 없습니다.
</c:if>
<c:otherwise>
	<c:forEach begin="1" end="list.count" var="num" step="1">
	<li>${num }</li>
	</c:forEach>

</c:otherwise>
	<%--
		ArrayList<Integer> list = (ArrayList<Integer>) session.getAttribute("numList");
		if (list == null || list.isEmpty()) {
	누적된 숫자가 없습니다.
		} else {
	<ul>
			for (Integer num : list) {
		<li><%=num%></li>
				}//for종료
	</ul>
	
		}//else종료
	--%>


</body>
</html>