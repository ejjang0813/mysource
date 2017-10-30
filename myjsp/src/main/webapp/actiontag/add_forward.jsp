<%@ page contentType="text/html;charset=utf-8"%>
<%--
	요청 파라미터들을 attribute의 VO객체의 담아서 실제 요청처리할 SErvlet으로 이동.
 --%>
 <jsp:useBean scope="request" id="person" class="vo.Person"/>
 <jsp:setProperty name="person" property="*"/>
 <%--
 	request.getReauestDispatcher("").forward(req,resp);
  --%>
 <jsp:forward page="/addPerson"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>