<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.UserVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	UserVo userVo = new UserVo(1, "박명수", "park", "1234", "male"); <br>
	request.setAttribute("userVo", userVo); <br>
	request.setAttribute("num", 1); <br>
	request.setAttribute("str", "안녕하세요"); <br>
	<br>
	
	<h1>어트리뷰트 값 쓰기</h1>
	<h2>자바스클립틀릿</h2>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
	%>
	name = <%=userVo.getName() %> <br>
	password = <%=userVo.getPassword() %> <br>
	gender = <%=userVo.getGender() %> <br>
	<br>
	num = <%=num %> <br>
	str = <%=request.getAttribute("str") %> <br>
	
	<br>
	<h2>el</h2>
	name = ${requestScope.userVo.name } <br><!-- "userVo"이걸 넣었다 vo에 getName있던것을 막아버리면 에러가 난다. 그냥 필드값을 받는게 아니라 get에있는것을 옮겨올때 변형시켜서 사용한것. 반드시알것 -->
	name = ${userVo.name } <br> <!-- scope는 생략이 가능하기 때문에 requestScope인지 sessionScope인지 헷갈린다 -->
	password = ${requestScope.userVo.password } <br>
	gender = ${requestScope.userVo.gender }<br>
	
	num = ${requestScope.num } <br>
	
	str= ${requestScope.str } <br>
	


</body>
</html>