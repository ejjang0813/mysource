<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- Context Root 경로 : application의 시작경로(myjsp/sessionWeb)
	http://ip:port/contextRoot/자원경로.
 --%>
<h1>Context Root 경로 조회.</h1>
<%= application.getContextPath() %><br>
<%-- application은 jsp내장객체이다. 이것은 ServletContext객체를 제공해준다. servletContext는 어플리케이션이 가지고잇는 정보들이나 기능들을 제공해준다.  --%>
<%= application.getInitParameter("rootPath") %><%--초기파라미터 조회하기. --%>
${initParam.rootPath }<br>
<a href="<%=application.getContextPath() %>/el/el_exam1.jsp">el_exam1.jsp</a>
<a href="${initParam.rootPath}/el/el_exam2.jsp">el_exam2.jsp로 이동</a> 
<p>
<form action="${initParam.rootPath}/el/el_exam3.jsp " method="post">
	이름 : <input type="text" name="name"><br>
	나이 : <input type="number" name="age"><br>
	다중선택 : 
		c언어 : <input type="checkbox" name="language" value="C">
		자바 : <input type="checkbox" name="language" value="Java">
		파이썬 : <input type="checkbox" name="language" value="python">
		<br>
		<button>전송</button>

</form>
</body>
</html>