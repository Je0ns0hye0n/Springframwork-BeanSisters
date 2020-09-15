<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<script type="text/javascript">
	alert("정말 로그아웃 하시겠습니까?")
</script>
</head>
<body>

	<%
		session.invalidate(); //세션무효화]
	%>
	<script>
		location.href = '../main_subscription/index.jsp';
	</script>

</body>
</html>