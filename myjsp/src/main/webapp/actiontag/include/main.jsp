<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/menu.jsp"/>
<%--top.jsp를 포함(include) --%>
<%@ include file="/WEB-INF/top.jsp"%> 
<%--main.jsp를 실행하다가 top.jsp를 만나면 실행이되고 결과값중에 출력될 값을 가지고가서 main에서 돌와서 붙여지는것이다. 하나로 합쳐서 실행되는것이 아니다. --%>
<jsp:include page="/WEB-INF/top.jsp"/>
<hr>
main.jsp
</body>
</html>