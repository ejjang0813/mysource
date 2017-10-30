<%@ page contentType="text/html;charset=utf-8"%>
<!-- (vo.)Person result = (vo.Person)request.getAttribute("result")하기 
	if(result == null){
	result = new vo.Person();//no-arg생성자로 객체를 생성
	request.setAttribute("result", result);
-->
<jsp:useBean scope="request" id="result" class="vo.Person"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>조회결과</h1>
<%-- out.print(result.getName()) --%>
이름 : <jsp:getProperty name="result" property="name"/> - <%=result.getName() %> <br>
나이 : <jsp:getProperty name="result" property="age"/> - <%=result.getAge() %><br>
키 : <jsp:getProperty name="result" property="tall"/> - <%=result.getTall() %><br>
결혼여부 : <jsp:getProperty name="result" property="marriage"/> - <%=result.isMarriage() %><br>
<a href="/myjsp/actiontag/request.jsp">request.jsp</a>
</body>
</html>