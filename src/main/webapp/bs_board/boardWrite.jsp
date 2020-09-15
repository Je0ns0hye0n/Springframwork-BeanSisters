<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script type="text/javascript">
   if(${su > 0}) { // 저장 성공
      alert("작성하신 글을 저장했습니다.");
      location.href="boardList.do?pg=1";
   } else { // 저장 실패
      alert("작성하신 글을 저장하지 못했습니다.");
      history.back(); /* location.href="boardWriteForm.do" */
   }
</script>
</head>
<body>

</body>
</html>