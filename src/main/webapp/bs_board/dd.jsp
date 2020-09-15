<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>게시판보기..</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../css/modern-business.css" rel="stylesheet">
<script src="../vendor/jquery/jquery.min.js"></script>

<script type="text/javascript">
   function isLogin(board_num) {
      if(${mem_id == null}) {
         alert("로그인하세요.");
      } else {
         location.href="boardView.do?board_num=" + board_num + "&pg=" + ${pg};
      }
   }

</script>

<!-- bootstrap : pagination -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

</style>

</head>
<body>

 <!-- 네비게이션 - 상단바 -->
   <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
   
      <div class="container">
         <a class="navbar-brand" href="../main_subscription/index.jsp" >BEAN SISTERS</a>  <!--  //클릭시 index로 이동.  -->
         
   
         <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button> 
         
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown"
                  aria-haspopup="false" aria-expanded="false"> SHOP </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                     <a class="dropdown-item" href="../bs_shop/coffee_shop.jsp">커피</a> 
                     <a class="dropdown-item" href="../bs_shop/tools_shop.jsp">브로잉도구 </a>
                     <a class="dropdown-item" href="../bs_shop/goods_shop.jsp">컵&아이템</a> 
                  </div>
               </li>
            <!-- <li class="nav-item active"><a class="nav-link" href="about.html">SHOP</a></li> -->
            <li class="nav-item"><a class="nav-link" href="../main_subscription/index.jsp">정기배송</a></li>
            <li class="nav-item"><a class="nav-link" href="../bs_class/class.jsp">클래스</a></li>
            <li class="nav-item"><a class="nav-link" href="../bs_board/boardList.do?pg=1">후기게시판</a></li>
            <li class="nav-item"><a class="nav-link" href="../bs_qna/qna.jsp">QnA</a></li>
            
<%
        String name = null;
        if(session.getAttribute("name") != null){
           name = (String) session.getAttribute("name");
        }
%>            
<% 
            if (name == null ) {
%>            
            <li class="nav-item"><a class="nav-link" href="../bs_member/loginForm.jsp">로그인</a></li>
            <li class="nav-item"><a class="nav-link" href="../bs_member/signForm.jsp">회원가입</a></li>
            </ul>
<%          }else{ %>   

           <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownmypage" data-toggle="dropdown"
                  aria-haspopup="false" aria-expanded="false"> 마이페이지 </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownmypage">
                     <a class="dropdown-item" href="../bs_member/payCheck.do">결제내역</a> 
                     <a class="dropdown-item" href="../bs_member/memberModifyForm.do">회원정보수정 </a>
                     <a class="dropdown-item" href="../bs_member/logout.jsp">로그아웃</a> 
                     <a class="dropdown-item" href="../bs_member/delete.do">회원탈퇴 </a>
                  </div>
            <li class="nav-item"><a class="nav-link" href="../bs_member/cart.do">장바구니</a></li>
               </ul>
                    
            </li>
        </ul>        
<%          } %>
            
               
            </div>
         </div>
   </nav>
   
   <!-- Page Content -->
   <div class="container">

       <h1 class="mt-4 mb-3">게시판
        <small>목록 보기</small>
        </h1>

      <!-- 게시판 -->
      <table>
         <tr bgcolor="#d5d5d5">
             <th width="70">글번호</th>
             <th width="200">제목</th>
             <th width="100">작성자</th>
             <th width="70">조회수</th>
         </tr>
         <!-- 확장 for문 -->
         <c:forEach var="boardDTO" items="${list }">
            <tr>
               <td>${boardDTO.board_num }</td>
                <td><a id="subjectA" href="#" onclick="isLogin(${boardDTO.board_num})">
                   ${boardDTO.board_title }</a></td>
                <td>${boardDTO.board_id }</td>
                <td>${boardDTO.board_count }</td>
              </tr>
           </c:forEach>
  		</table>
  		
         <!-- 페이징 -->
         <div class="container">
	         <ul>
	            <li>
	               <c:if test="${startPage > 3 }">
	                  [<a class="paging" href="boardList.do?pg=${startPage - 1 }">이전</a>]
	               </c:if>
	               
	               <!-- 일반 for문 -->
	               <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
	                  <c:if test="${pg == i }">
	                     [<a class="currentPaging" href="boardList.do?pg=${i }">${i }</a>]
	                  </c:if>
	                  <c:if test="${pg != i }">
	                     [<a class="paging" href="boardList.do?pg=${i }">${i }</a>]
	                  </c:if>
	               </c:forEach>
	                  
	               <c:if test="${endPage < totalP }">
	                  [<a class="paging" href="boardList.do?pg=${endPage + 1 }">다음</a>]
	               </c:if>
	            </li>
	         </ul>
         </div>
      
      <a href="boardWriteForm.do">새글쓰기</a>
      <br><br>
   </div>
   <!-- /.container -->
   
   <!-- Footer -->
   <footer class="py-5 bg-dark">
      <div class="container">
         <p class="m-0 text-center text-white">Copyright &copy; 
          Bean Sisters 2020-노을 | 배혜주 | 이새롬 | 전소현 </p>
      </div>
   </footer>
   
</body>
</html>