<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<table border="1">
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
			<td>status.index</td>
			<td>status.count</td>
		</tr>
		
		
		<!--
		List<UserVo> userList = new ArrayList<UserVo>();
		for(int i=0 ; i<20 ; i++) {
			UserVo vo = new UserVo(i, i+"번 회원", i+"@gamil.com", "1234", "male");
			userList.add(vo);
		}
		
		System.out.println(userList.toString());
		
		request.setAttribute("userList", userList);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/13.jsp");
		rd.forward(request, response);
		
		
		for(UserVo userVo : list) vo를 userVo로 바꿔줬음
		
		
		-->	
		
		<c:forEach items="${requestScope.userList }" var="userVo" varStatus="status"> <!-- begin="" end="" step="" 일정횟수의 루프를 돌면서 값을 출력하는 방법 -->
			<tr>
				<td>${userVo.no}</td>
				<td>${userVo.name }</td>
				<td>${userVo.email }</td>
				<td>${status.index }</td>
				<td>${status.count }</td>
			</tr>
		</c:forEach>

		
	
	
	</table>



</body>
</html>