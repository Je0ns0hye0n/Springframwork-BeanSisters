<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>CLASS</title>

  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">

  <!-- w3schools Input Type -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

   <!-- jQuery : price -->
   <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script type="text/javascript">
      $(document).ready(function() {
         $("select").change(function() {
            $("input[id=price]").val($(this).val());
            $("input[type=text]").val($(this).val());
            var a= $(this).val();
            $("input[id=qty]").val(a/100000);
         });
      });
      
      
      function isLogin(){
         
         if(${mem_id==null}){
            alert("로그인을 먼저 해주세요!");
             return false;
         } else{
            
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
  <!-- Page Content -->
  <div class="container">
<br><br>
    <!-- Page Heading/Breadcrumbs -->
     <form action="../bs_class/insertCart.do" method="post" onsubmit="return isLogin();">
  
    <h1 class="mt-4 mb-3">one day class
     
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="class.jsp">Class</a>
      </li>
      <li class="breadcrumb-item active">one day class</li>
    </ol>



    <div class="row">

      <!-- Blog Entries Column -->
      
      
      <div class="col-md-8">
       
        <!-- Blog Post -->
        <div class="card mb-4">
          <img class="card-img-top" src="../img/class2.jpg"width="750" height="300" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">AEROPRESS CLASS</h2>
            <p class="card-text"> 
               평소 에스프레소가 너무 어렵게 느껴지고, 선뜻 주문하기도 망설여졌다면.
            에스프레소 테이스팅을 통해 에스프레소의 다양한 매력을 경험해보세요.
            기본 블랙 커피부터 특별한 날을 위한 스페셜 메뉴까지. 
            에어로프레스로 쉽고 재미있게 홈브루잉을 즐겨보세요.
               
               
         </p>
            <button class="btn btn-primary" type="submit">장바구니 &rarr;</button>
          </div>
        </div>

    

      </div>

      <!-- Sidebar Widgets Column -->
   <!-- Sidebar Widgets Column -->
      <div class="col-md-4" >

     

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">인원</h5>
          <div class="card-body" style="text-align:right">
             <div class="container">
             <!-- 수업이름=cart_class / 가격 cart_price / 인원: cart_count -->
                <form action="../bs_class/insertCart.do" method="post" onsubmit="return isLogin();">
                <select name="" id="select_price" class="form-control">
                  <option value="">-- 인원수 --</option>
                  <option value="100000">1</option>
                  <option value="200000">2</option>
                  <option value="300000">3</option>
                  <option value="400000">4</option>
                 </select>
                 
                 <!-- <input value=" " style="display:none;" name="c_pro_name"> -->
                 
                 <input value="HOME BREW RECIPES" style="display:none;" name="c_pro_name">
               
              <input id="qty" style="display:none;" name="cart_count">
                
                 <input type="hidden" id="price" name="cart_price" />
         
         </div>
           <hr>
           <input type="text" id="input" name="input" value=""
                   style="background-color:transparent; border:0 solid black; text-align:right;" disabled>
        
              </form>
          </div>
        </div>
      
       <div class="card my-4">
          <h5 class="card-header">추천드립니다.</h5>
          <div class="card-body">
              너무 너무 유익한 커피 수업!
          </div>
        </div>
      </div>

 
    <!-- /.row -->

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