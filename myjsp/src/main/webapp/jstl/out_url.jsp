<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>out 태그</h1>
<br>은 엔터입니다. <h2>는 제목 태그입니다.</h2>
&lt;br&gt;은 엔터입니다.<br>
5 &lt; 3
<c:out value="<br>은 엔터입니다.-<out>태그로 출력"/><br>
<c:set var="message" scope="request" value="이것은 메세지입니다."/>
<c:out value="${requestScope.message }" default="메세지가 없습니다"/>
<c:url value="/jstl/url_response.jsp" var="myurl"/>
<h1>url 태그</h1> <!-- 링크의 url을 만들어줄 때 사용한다. -->
<c:url value="/jstl/url_response.jsp" var="myurl">
<%-- 요청파라미터 등록 : url뒤에 queryString으로 추가 - URL Encoding처리 --%>
<c:param name="name">홍길동</c:param>
</c:url>
<a href="/myjsp/jstl/url_response.jsp?name=홍길동">url_response.jsp</a>

<a href='<c:url value="/jstl/url_response.jsp"/>'>url_response.jsp - url태그 이용</a>
<a href="${myurl }">url_response.jsp</a>
</body>
</html>