<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>요청파라미터 출력 - EL</h1>
name : ${param.name }<br><%--내장객체 param.요청파라미터_이름 을 적어준다. 이것은 request.getParameter를 한것과 같다. --%>
age : ${param.age }<br>
<%--language : ${param.language }<br><선택된것중에 첫번째 값만 불러온다. 이렇게 조회하면 안됨. --%>
language : ${param.language }<br>
<%-- paramValues.요청파라미터 이름 : request.getParameterBalues() --%>
${paramValues.language } <%--배열객체의 toString값이 출력된다. --%>
${paramValues.language[0] } ${paramValues.language[1] } ${paramValues.language[2] }

</body>
</html>