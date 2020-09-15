<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<script type="text/javascript">
alert("정말 회원탈퇴 하시겠습니까?")
alert("탈퇴되었습니다 다음에 또 이용해주세요!");
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