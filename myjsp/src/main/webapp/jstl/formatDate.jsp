<%@page import="java.util.Date"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("current", new Date());

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 이렇게 아래와 같이 해도 출력은 되지만, 내가 원하는 형태가 아니기때문에 formatDate를 사용하면 내가 원하는 형태(format)으로 뿌려줄 수 있다. --%>
	현재일시 : ${requestScope.current }<br>
	<h1>fmt를 이용해 일시 출력</h1>
	<%--
		setLocale 태그로 지역을 설정하면 formatDate/formatNumber의 기본 형식이 그 지역의 형식으로 바꾸니다.
		지역코드형식 : 언어코드_국가코드
		언어코드 : ISO-63, 국가코드 : ISO-3166
		주요코드들
			- 우리나라 :  ko_KR
			- 중국 : zh_CN (대만 : zh_TW)
			- 미국 : en_US
			- 영국 : en_GB
			- 일본 : ja_JP
			
	 --%>
	<fmt:setLocale value="en_US"/><%--지역을 미국으로 설정하기 --%>
	<fmt:setLocale value="zh_CN"/>
	<fmt:formatDate value="${requestScope.current }"/><br><%-- value="date"이지만 기본값이 date이기때문에 적어줄 필요 없다. --%>
	<fmt:formatDate value="${requestScope.current }" type="time"/><br>
	<fmt:formatDate value="${requestScope.current }" type="both"/><br>
	<%-- pattern 사용. --%>
	<fmt:formatDate value="${requestScope.current }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/><br>
	<fmt:formatDate value="${requestScope.current }" pattern="yyyy/MM/dd HH:mm:ss"/><br>
</body>
</html>













