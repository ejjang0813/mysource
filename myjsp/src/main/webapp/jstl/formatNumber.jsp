<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setAttribute("num",3000000);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
EL : ${requestScope.num }<br>
value만 지정하면 단위구분자를 붙여서 찍어준다 : <fmt:formatNumber value="${requestScope.num }"/><br>
<%-- 
	type : number(기본) - 단위구분자, 
	currency : 통화기호, 
	percent : %기호를 붙여준다.(value * 100) 
--%>
앞에 통화단위를 붙여준다. : <fmt:formatNumber value="${requestScope.num }" type="currency"/><br>
<fmt:formatNumber value="${requestScope.num }" type="percent"/><br>
<%-- groupingUsed를 false로 주면 ,로 나누지 않는다. --%>
<fmt:formatNumber value="${requestScope.num }" type="currency" groupingUsed="false"/><br>
<fmt:setLocale value="en_US"/>
en_US<fmt:formatNumber value="${requestScope.num }" type="currency"/><br>
<fmt:setLocale value="en_GB"/>
en_GB<fmt:formatNumber value="${requestScope.num }" type="currency"/><br>
<fmt:setLocale value="zh_CN"/>
zh_CN<fmt:formatNumber value="${requestScope.num }" type="currency"/><br>
<%
	request.setAttribute("doubleNum",300000.123456);
%>
<%-- 정수부와 소수부를 표시할때 #이면 값이 없으면 값을 없애고, 0은 값이 없으면 0으로 채워준다. --%>
<fmt:formatNumber value="${doubleNum }" pattern="#,###.####00"/>
</body>
</html>














