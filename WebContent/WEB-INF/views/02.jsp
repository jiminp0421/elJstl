<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 연산자 </h1>
	<p>
	\${5+2} -->  ${5+2} <br> <!-- \$글자 달러로 이해했다 -->
	\${5-2 } --> ${5-2 } <br>
	\${5*2 } --> ${5*2 } <br>
	<br>
	\${5/2 } --> ${5/2 } <br>
	\${5 div 2 } --> ${5 div 2 } <br>
	<br>
	\${5%2 } --> ${5%2 } <br>
	\${5 mod 2 } --> ${5 mod 2 } <br>
	<br>
	<br>
	\${5>2 } --> ${5>2 } <br>
	\${5 gt 2 } --> ${5 gt 2 } <br>
	<br>
	\${5<2 } --> ${5<2 } <br>
	\${5 lt 2 } --> ${5 lt 2 } <br>
	<br>
	\${5>=2 } --> ${5>=2 } <br>
	\${5 ge 2 } --> ${5 ge 2 } <br>
	<br>
	\${5<=2 } --> ${5<=2 } <br>
	\${5 le 2 } --> ${5 le 2 } <br>
	<br>
	\${5==2 } --> ${5==2 } <br>
	\${5 eq 2 } --> ${5 eq 2 } <br>
	<br>
	\${5!=2 } --> ${5!=2 } <br>
	\${5 ne 2 } --> ${5 ne 2 } <br>
	<br>
	\${5>=2? 5: 2 } --> ${5>=2? 5: 2 } <br> <!--a:5>=2? b(true) 5 c(false) 2 -->
	<br>
	\${(5>2) || (2>10)} --> ${(5>2) || (2>10)} <br>
	<br>
	\${empty str } --> ${empty str} <!-- str에 값을 넣어준적이 없으니 null이다. empty는 값이 비었냐고 물어보는것 -->
	<br>
	\${empty reqVal } --> ${empty reqVal} <!-- Servlet02에 request.setAttribute("reqVal", "abcdefgh");에 값이 있으니까 false로 나옴 -->
	<br>
	\${str } --> ${str }
	</p>


</body>
</html>