<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>bs_board</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" >

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<script type="text/javascript" src="http://localhost:8080/BeanSisters/script/memberScripts.js"></script>

  <!-- w3schools Input Type -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style type="text/css">

</style>

<script type="text/javascript">
   function isLogin(board_num) {
      if(${mem_id == null}) {
         alert("로그인 먼저 하세요.");
         return false;
      } else {
 
        //location.href="boardWrite.do?board_title="+ subject + "&board_content="+board_content+"&mem_id="+mem_id ; 
      }
   }
</script>
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
   <br>
   
   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <br><br>
      <h1 class="mt-4 mb-3">
            후기게시판 <small>글쓰기</small>
      </h1>

      <ol class="breadcrumb">
         <li class="breadcrumb-item"><a href="../main_subscription/index.jsp">Home</a></li>
         <li class="breadcrumb-item active">게시글 쓰기</li>
      </ol>


      <form action="boardWrite.do" name="boardWriteForm" method="post" onsubmit="return isLogin(${boardDTO.board_num});">
         <!-- Comments Form -->
         <div class="card my-4">
            <h5 class="card-header">
               <input type="text" name="subject" size="59" placeholder="제목">
            </h5>
            <div class="card-body">
               <div class="form-group">
                 <textarea class="form-control" name="board_content" rows="5" placeholder="내용을 입력하세요."></textarea>
               </div>
             <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </div>
      </form>
    <br><br><br>
   </div>

   <!-- Footer -->
    <footer class="py-5 bg-dark">
       <div class="container">
         <p class="m-0 text-center text-white">Copyright &copy; 
        Bean Sisters 2020-노을 | 배혜주 | 이새롬 | 전소현 </p>
       </div>
    </footer>

</body>

</html>