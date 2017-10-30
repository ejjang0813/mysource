<%@page import="vo.Person"%>
<%@ page contentType="text/html;charset=utf-8" %>
<%
	request.setAttribute("result","request - 결과값");
	session.setAttribute("result", "session - 결과값");
	request.setAttribute("error message","XXX이유로 오류가 발생했습니다.");
	session.setAttribute("person", new Person("김머머", 20, 190, false));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결과값 : ${result } || ${requestScope.result } || ${sessionScope.result }
<%-- 결과는 같지만 찾는곳이 다르다. 전자는 없어서 requestScope까지 가서 찾은것이지만, 후자는 바로 requestScope에서 값을 찾는다. --%>
오류메세지 : ${requestScope["error message"] }<br>
오류메세지 유무 : ${requestScope["error message"] == null } - ${empty requestScope["error message"] }
			|| ${requestScope["error message"] != null } - ${! empty requestScope["error message"] }
<br>
Person 10년 후 나이 : ${sessionScope.person.age+10}세 - 
미성년 여부(19세) : ${sessionScope.person.age>19 ? "성년입니다" : "미성년입니다" } - ${sessionScope.person.age gt 19 ? "성인":"미성년" }
			
			
</body>
</html>