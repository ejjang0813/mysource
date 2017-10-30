<%@page import="vo.Person"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%-- JSTL사용 : 1. jstl library를 다운		2. 각 JSP에서 tagilb지시자 설정. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set scope="session" var="loginInfo" value='<%=new Person("홍길동", 30, 190.9, false)%>' />

<c:set target="${sessionScope.loginInfo }" property="age" value="30" />

<c:remove scope="session" var="loginInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 사용자가 로그인한 상태이면 메뉴2를 로그인하지 않은 상태이면 메뉴 2를 보여준다. (고객센터 - 공통메뉴 : 로그인을 하지 않아도 공통으로 보여준다.)
	로그인여부 : session영역에 loginInfo란 이름의 속성이 있으면 로그인.
--%>
<c:choose>
	<c:when test="${sessionScope.loginInfo == null}">
		메뉴1 : 로그인 회원가입
	</c:when>
	<c:otherwise>
	메뉴2 : 로그아웃 마이페이지
	<%--로그인한 사람의 나이가 20세 이상이면 성인용품 메뉴를 보여준다. --%>
		<c:if test="${sessionScope.loginInfo.age >= 20 }">
	성인용품
	</c:if>
	</c:otherwise>
	</c:choose>
	 고객센터
</body>
</html>