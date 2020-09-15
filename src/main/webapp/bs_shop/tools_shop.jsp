<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SHOP_Tool</title>

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
    <h1 class="my-4">SHOP_Tool</h1>

   
    <!-- Portfolio Section -->
    <h2>Tool</h2>

    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item"  onclick= window.open("tools1.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/tool1.JPG" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">하리오 V60 드리퍼</a>
            </h4>
            <p class="card-text">1~2인 용량의 하리오 드리퍼</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("tools2.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/tool2.JPG" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">에어로프레스</a>
            </h4>
            <p class="card-text">머신 없이도 집에서 에스프레소를 만드는 법.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("tools3.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/tool3.JPG" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">하리오 슬림 핸드밀</a>
            </h4>
            <p class="card-text">군더더기 없는 S, 슬림한 라인과 라인을 따라 손으로 잡기 편한 그립감이 좋은 핸드밀</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("tools4.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/tool4.JPG" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">드립용 디지털 저울</a>
            </h4>
            <p class="card-text">현대인의 소울메이트 커피, 하리오의 과학으로 한 층 더 맛있게 즐겨보세요!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("tools5.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/tool5.JPG" width="700" height="400"alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">드립 포트</a>
            </h4>
            <p class="card-text">커피의 맛을 좌우할 수 있는 물줄기 조절이 용이한 드립포트입니다.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item" onclick= window.open("tools6.jsp","width=800,height=400");>
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../img/tool6.JPG" width="700" height="400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">드립 필터</a>
            </h4>
            <p class="card-text">KALITA 커피필터 : 클레버 전용 필터입니다.</p>
          </div>
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
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 
        Bean Sisters 2020-노을 | 배혜주 | 이새롬 | 전소현 </p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>