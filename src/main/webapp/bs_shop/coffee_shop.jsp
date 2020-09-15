<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SHOP_Coffee</title>

  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">

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
   <br>
   <br>
    <h1 class="my-4">SHOP_Coffee</h1>
   
    <!-- Portfolio Section -->
    <h2>COFFEE</h2>

    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("coffee1.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/coffe1.jpg" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">DAYDREAM</a>
            </h4>
            <p class="card-text">시즈널 블렌드 <데이드림>, 시원한 휴양지의 풍경을 떠올려부세요. 발송일로부터 3일 이내 로스팅된 원두로 보내드립니다.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("coffee2.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/coffee2.jpg" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">부룬디 말리다디</a>
            </h4>
            <p class="card-text">BS가 추천하는 싱글오리진 커피. 발송일로부터 3일 이내 로스팅된 원두로 보내드립니다.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item"  onclick= window.open("coffee3.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/coffee3.jpg" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">케냐 루케라AA</a>
            </h4>
            <p class="card-text">BS가 추천하는 싱글오리진 커피. 발송일로부터 3일 이내 로스팅된 원두로 보내드립니다.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item"  onclick= window.open("coffee4.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/coffee4.jpg" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">케냐 응다로이니</a>
            </h4>
            <p class="card-text">BS가 추천하는 싱글오리진 커피. 발송일로부터 3일 이내 로스팅된 원두로 보내드립니다.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item"  onclick= window.open("coffee5.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/coffee5.jpg" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">블랙수트</a>
            </h4>
            <p class="card-text">클래식의 정점, 곡물과 견과류를 구운 고소한 맛을 대표하는 커피. 발송일로부터 3일 이내 로스팅된 원두로 보내드립니다.</p>
          </div>
        </div>
      </div>
    <!-- /.row -->

    <!-- Features Section -->
    <div class="row">
      <div class="col-lg-6">
       <br><br><br>
       <br><br><br>
       
        <h2>여름을 위해 준비한 7월의 커피</h2>
        <p>세계 각지에서 찾은 보석 같은 싱글오리진. 이시기에 가장 맛있는 제철 커피를 즐겨보세요</p>
        <ul>
          <li>
            <strong>마셔보고 고르세요</strong>
          </li>
          <li>COFFEE BAR</li>
          <li>4가지 브루잉 도구를 마스터하는 커피의 세계</li>
          <li>우리 카페에 빈브라더스 원두를</li>
          <li>나에게 선물하고싶은 커피 3가지</li>
        </ul>
      </div>
      <div class="col-lg-6" width="690px" height="450px">
        <img class="img-fluid rounded" src="../img/img2.jpg"   alt="what??">
      </div>
    </div>
    <!-- /.row -->

    <hr>

   
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 
        Bean Sisters 2020-노을 | 배혜주 | 이새롬 | 전소현 </p>
    </div>
 
  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>