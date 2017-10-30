<%@page import="vo.Member"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	JSP에서 
	+ HttpServletRequest객체 사용하고 자 할때 : request변수 사용
		(request.getParameter(""); request.getAttribute("");
	+ HttpSession객체를 사용하고자 할때 : session변수 사용
		(session.getattrivute(""), session.setAttribyte("","");)
	=> request와 session변수는 JSP 내장객체이다.
 -->
<h1>login_success.jsp</h1>
<%= ((Member)session.getAttribute("loginMember")).getName() %>님 환영합니다 :)<!-- Member객체는 import해주어야한다.(자동완성하면 적용 가능하다) -->
<p>
	<a href="/sessionWeb/index.jsp">메인페이지</a>
	<a href="/sessionWeb/logout">로그아웃</a>
</p>
</body>
</html>