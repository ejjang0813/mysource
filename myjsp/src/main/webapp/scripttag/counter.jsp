<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html;charset=utf-8" %>
<%!//선언자 태그 - instance 변수, 메소드(jspInit, jspDestroy등 오버라이딩해서 초기화해야하는 작업이 필요할 때 사용한다.) 선언/구현
	private int count = 1000000;
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/menu.jsp"/>
<%
	//프로그램 로직을 넣는다. - 스크립트태그
	int size = (int)(Math.random()*50+1);//1~50까지의 랜던 숫자 생성.
	DecimalFormat format = new DecimalFormat("#,###");
	String countStr = format.format(++count);
%>
<%--표현식 태그는 출력할 때 사용한다. --%>
<span style="font-size:<%=size%>px;"><%= countStr %>번째 방문자 입니다.</span><%-- 내용이나 출력값을 동적으로 사용이 가능하다. 어디든 사용 가능하다. --%>
</body>
</html>
<%-- http://127.0.0.1:8088/myjsp/scripttag/counter.jsp --%>
<!-- html주석 -->