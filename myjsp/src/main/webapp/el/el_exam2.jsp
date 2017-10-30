<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.Person"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%
	//EL을 이용해 Collection(배열/List/Map)의 요소(element)출력.
	//List/배열 - index로 접근. => [] 표기법 사용( [index] )
	//Map - key로 접근. => . 표기법, []표기법(.key, ["key"])로 접근이 가능하다.
	//Set - set자체에는 접근이 가능하지만 , set에 add된 값들은 출력이 불가능하다. EL로 요소출력은 할 수 없다.(이유는? 배열이나 리스트는 각각의 배열에 접근할 수 있는 방법이 있는데 , Set은 그 값을 찍을 방법이 없기때문이다.)

	String[] names = { "김회원", "이회원", "최회원" };//이 값은 이름을 조회하는 controller에서 가지고온것이라고 가정한다.
	request.setAttribute("nameList", names);//request에 배열이 담겨서 왔다고 가정한다.

	HashMap map = new HashMap();
	map.put("product name", "텔레비전");
	map.put("price", 200000);
	map.put("owner", new Person("김영수", 33, 190.88, false));
	request.setAttribute("product", map);

	ArrayList<Person> personList = new ArrayList<>();
	//Person객체 5개 add
	personList.add(new Person("김모모", 32, 170.99, true));
	personList.add(new Person("장모모", 34, 150.99, false));
	personList.add(new Person("이모모", 43, 160.99, false));
	personList.add(new Person("박모모", 23, 170.99, true));
	personList.add(new Person("손모모", 12, 180.99, false));
	request.setAttribute("result", personList);

	HashSet set = new HashSet();
	set.add("a");
	set.add("b");
	set.add("c");
	session.setAttribute("set", set);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 500px;
	border-collapse: collapse; /*두줄로 만들어진 줄을 하나로 병합하는것.*/
}

table, td, th {
	border: 1px solid black;
	padding: 5px; /*padding : 안쪽여백*/
	text-align: left;
	/*글자배열 설정. th는 기본으로 가운데정렬이기때문에 모두 왼쪽으로 해주기때문에 설정해준것임.*/
}
</style>
</head>
<body>
	<h1>Set출력 - EL : set의 요소 조회및 출력은 안됨.</h1>
	${sessionScope.set }
	<h1>조회결과 - List를 EL로 출력</h1>
	<table border="1" width="500px">
		<thead>
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>키</th>
				<th>결혼여부</th>
			</tr>
			<tr>
				<td>${requestScope.result[0].name }</td>
				<td>${requestScope.result[0]["age"] }</td>
				<td>${requestScope.result[0]["tall"] }</td>
				<td>${requestScope.result[0]["marriage"] }</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${requestScope.result[1].name }</td>
				<td>${requestScope.result[1].age }</td>
				<td>${requestScope.result[1]["tall"] }</td>
				<td>${requestScope.result[1].marriage ? "기혼" : "미혼" }</td>
			</tr>
			<tr>
				<td>${requestScope.result[2]["name"] }</td>
				<td>${requestScope.result[2]["age"] }</td>
				<td>${requestScope.result[2]["tall"] }</td>
				<td>${requestScope.result[2]["marriage"] }</td>
			</tr>
			<tr>
				<td>${requestScope.result[3]["name"] }</td>
				<td>${requestScope.result[3]["age"] }</td>
				<td>${requestScope.result[3]["tall"] }</td>
				<td>${requestScope.result[3]["marriage"] }</td>
			</tr>
			<tr>
				<td>${requestScope.result[4]["name"] }</td>
				<td>${requestScope.result[4]["age"] }</td>
				<td>${requestScope.result[4]["tall"] }</td>
				<td>${requestScope.result[4]["marriage"] }</td>
			</tr>
		</tbody>
	</table>

	<h1>Map의 값 출력</h1>
	<%--식별자규칙에 어긋나는 문자가 포함된 경우는 [] 표기법을 사용해 조회한다. --%>
	제품명 : ${requestScope.product["product name"] }
	<br> 가격 : ${requestScope.product.price}
	<br> owner의 이름 : ${requestScope.product.owner.name }
	<br> 나이 : ${requestScope.product.owner.age }세
	<h1>배열의 값 출력 - EL</h1>
	<%--${requestScope.nameList.0 } 이렇게 표기를 하면 배열의 값이 출력이 안된다. 이 경우 대괄호 표기법을 사용한다. --%>
	${requestScope.nameList[0]} - ${requestScope.nameList["1"] } -
	${requestScope.nameList['2']} - ${requestScope.nameList[7] }
	<%--없는 index에 접근을 하면 exception이 나는것이 아니라 출력이 되지 않는다. --%>


</body>
</html>