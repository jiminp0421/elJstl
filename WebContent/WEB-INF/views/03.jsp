<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파라미터</h1>
	<!--localhost:8088/elJstl/03?id=you&pw=1111&name=재석&num1=100&num2=200-->
	
	<h2>자바스클립틀릿 파라미터 사용</h2>
	<%
		String id = request.getParameter("id"); //you꺼내고싶은것이다.
	%>
	
	id = <%=id %><br>
	id = <%=request.getParameter("id") %> <br>
	<br>
	pw = <%=request.getParameter("pw") %> <br>
	name = <%=request.getParameter("name") %> <br>
	num1 = <%=request.getParameter("num1") %> <br>
	num2 = <%=request.getParameter("num2") %> <br>
	
	
	
	sum = <%=request.getParameter("num1") + request.getParameter("num2") %>
	
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	sum = <%=num1 + num2 %>
	
	<br>
	<h1>el 파라미터값 사용</h1>
	id = ${param.id } <br>
	pw = ${param.pw } <br>
	name = ${param.name } <br>
	num1 = ${param.num1 } <br>
	num2 = ${param.num2 } <br>
	sum = ${(param.num1) + (param.num2)} <br>
	
	sum = ${(param.num1)} + ${(param.num2)}<br>
	

</body>
</html>