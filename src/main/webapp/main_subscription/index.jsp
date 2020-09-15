<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Start Bean Sisters</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../css/modern-business.css" rel="stylesheet">
<script src="../vendor/jquery/jquery.min.js"></script>
<style type="text/css">


#payment{
position:relative;
   left:43%;
   border-radius: 12px;
    background-color: white;
  color: black;
  border: 2px solid #555555;
  width: 150px;
  height:50px;

}
#pay{
  height:50px;
  display: table-cell; 
  vertical-align: middle;
  text-align:center;
}
#payment:hover {
  background-color: #555555;
  color: white;
}
</style>
<script type="text/javascript">

var arr= new Array();
 
$(function(){
    $("#bt1").click(function(){
    	$('html,body').stop().animate({scrollTop:'+=600'});
       $("#taste1").toggle();
       $("#taste2").toggle();
       $("#taste3").toggle();
       arr[0]="종류 > 원두";
       
    });
    
    $("#bt2").click(function(){
    	$('html,body').stop().animate({scrollTop:'+=600'});
       $("#taste1").toggle();
       $("#taste2").toggle();
       $("#taste3").toggle();
       arr[0]="종류 > 드립커피";
       
    });
    
    $("#bt3").click(function(){
    	$('html,body').stop().animate({scrollTop:'+=600'});
       $("#taste1").toggle();
       $("#taste2").toggle();
       $("#taste3").toggle();
       arr[0]="종류 > 콜드브루";

       
    });
 });
 

 $(function(){
    $("#bt4").click(function(){
    	$('html,body').stop().animate({scrollTop:'+=600'});
       $("#grind1").toggle();
       $("#grind2").toggle();
       $("#grind3").toggle();
       arr[1]="맛 > 월간 빈시스터즈";

       
    });
    
    $("#bt5").click(function(){
    	$('html,body').stop().animate({scrollTop:'+=600'});
       $("#grind1").toggle();
       $("#grind2").toggle();
       $("#grind3").toggle();
       arr[1]="맛 > 블랙수트";

       
    });
    
    $("#bt6").click(function(){
    	$('html,body').stop().animate({scrollTop:'+=600'});
       $("#grind1").toggle();
       $("#grind2").toggle();
       $("#grind3").toggle();
       arr[1]="맛 > 벨벳화이트";

       
    });
    
 });
 
 $(function(){
       $("#bt7").click(function(){
    	   $('html,body').stop().animate({scrollTop:'+=600'});
          $("#payment").toggle();
          arr[2]="분쇄도 > 홀 빈(갈지않음)";

       });
       
       $("#bt8").click(function(){
    	   $('html,body').stop().animate({scrollTop:'+=600'});
          $("#payment").toggle();
            arr[2]="분쇄도 > 핸드드립";

       });
       
       $("#bt9").click(function(){
    	   $('html,body').stop().animate({scrollTop:'+=600'});
          $("#payment").toggle();
            arr[2]="분쇄도 > 에스프레소";

       });
       
    });
 
    //주소에 선택한 value값을 배열로 넣어서 전달 
    function submit(){
       //alert("값확인1:"+arr[0]+"값확인2:"+arr[1]+"값확인3:"+arr[2]);
       //페이지 이동 
       location.href="payment.jsp?coffee="+arr[0]+"&taste="+arr[1]+"&grind="+arr[2];
    }
 
 
 
 //참고용 사이트 !!
 //https://jangjeonghun.tistory.com/entry/button-%ED%81%B4%EB%A6%AD%EC%8B%9C-value%EA%B0%92-%EB%B6%99%EC%97%AC%EC%84%9C-%EC%B2%98%EB%A6%AC%ED%8E%98%EC%9D%B4%EC%A7%80%EB%A1%9C-%EB%84%98%EA%B8%B0%EA%B8%B0form-%EC%A0%84%EC%86%A1
 //https://hang95-coding.tistory.com/10
 //9개 div를 한 form으로 묶어서 선택한 값들을 post해서 페이지로 값 넘기기 
 
 
 
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

      
 <h1 class="mt-4 mb-3">About
      <small>Subheading</small>
    </h1>

      <!-- Intro Content -->
      <div class="row">
         <div class="col-lg-6">
            <img src="../img/img1.jpg" alt="img1" width="550px" height="430px">
         </div>
         <div class="col-lg-6">
            <h2>About Modern Business</h2>
            <p>로스팅룸에서는 세계 각지에서 온 커피 생두가 커피원두로 다시 태어납니다.
                   그 역할을 담당하는 이 거대한 기계는 매끈한 외관도 아름답지만,
                    로스팅팀의 일과도 아름다워지게 해주었습니다. 
                    매일 아침 기준 프로파일을 바탕으로 기기를 설정하면 기기에 가해지는 화력을 정해진 시점에 조절하여 원하는 배전도의 원두를 일정하게 볶아냅니다.
                     많은 부분이 엔지니어링으로 해결되어, 보다 수월하게 로스팅이 이루어지게 되었습니다.</p>
                  <p>로스터리에는 원두를 볶아 빈브라더스의 각 매장, 카페 파트너, 온라인 고객에게 보내는 로스팅 룸뿐만 아니라 월간 원두를 선정하기 위한 커핑룸, 
                  세계각국의 생두를 모아두는 생두보관실, 빈브라더스의 바리스트와 카페 파트너 교육을 위한 트레이닝룸도 갖추고 있습니다. 
         </p>
               
         </div>
      </div>
      <!-- /.row -->

      <!-- Team Members -->
      <br><br>
      <h2>정기배송 타입을 골라주세요!</h2>

      <div class="row">
      
      <!--여기부터  커피 종류 선택 -->
      
      
         <div class="col-lg-4 mb-4">
         
            <!-- value를 해당 상품의 이름으로 줘야함  -->
            <div class="card h-100 text-center" id="bean1" value="bean1">
               <img class="card-img-top" src="../img/coffeebean.png" alt="">
               <div class="card-body">
                  <h4 class="card-title">원두</h4>
                  <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt1">
                  <p class="card-text">매일 로스팅해서 보내는<br>신선한 커피</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
            
         </div>
         <div class="col-lg-4 mb-4" >
      
            <div class="card h-100 text-center" id="bean2" value="bean2">
               <img class="card-img-top" src="../img/dripbag.png" alt="">
               <div class="card-body">
                  <h4 class="card-title">드립커피</h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt2">
                  <p class="card-text">뜨거운 물만 있으면 되는<br>간편한 드립커피</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
            
         </div>
         <div class="col-lg-4 mb-4" >
         
            <div class="card h-100 text-center" id="bean3" value="bean3">
               <img class="card-img-top" src="../img/coldbrew.png" alt="">
               <div class="card-body">
                  <h4 class="card-title">콜드브루</h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt3">
                  <p class="card-text">냉장고에서 꺼내<br>차갑게 따라 마시는<br>콜드브루</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
         </div>
      <!-- 여기까지 커피 종류 선택 -->
      
      <!-- 여기부터 맛 선택  -->
      <div class="col-lg-4 mb-4-2" style="display:none;" id="taste1" >
         
            <div class="card h-100 text-center">
               <img class="card-img-top" src="../img/singleoriginimg.png" alt="">
               <div class="card-body">
                  <h4 class="card-title">월간 빈시스터즈<br><small>추천 싱글오리진</small></h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt4">
                  <p class="card-text">세계 각지에서 찾은<br>보석 같은 싱글오리진.
                                    <br>이 시기에 가장 맛있는 제철 커피를<br>고민 없이 즐겨보세요.</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
            
         </div>
         <div class="col-lg-4 mb-4-2" style="display:none;" id="taste2">
            
            <div class="card h-100 text-center" >
               <img class="card-img-top" src="../img/blacksuitimg.png" alt="">
               <div class="card-body">
                  <h4 class="card-title">블랙수트<br><small>시그니처 블렌드</small></h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt5">
                  <p class="card-text">견과류의 고소한 맛이<br>입안 가득 퍼집니다.
                                    <br>다크초콜릿처럼 묵직한<br>시그니처 블렌드.</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
         </div>
         <div class="col-lg-4 mb-4-2" style="display:none;"  id="taste3">
         
            <div class="card h-100 text-center" >
               <img class="card-img-top" src="../img/velvetwhiteimg.png" alt="">
               <div class="card-body">
                  <h4 class="card-title">벨벳화이트<br><small>시그니처 블렌드</small></h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt6">
                  <p class="card-text">오렌지와 자몽같은<br>과일향이 풍부합니다.
                                    <br>과일 홍차처럼 깔끔한<br>시그니처 블렌드.</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
            
         </div>
         
      <!-- 여기까지 맛 선택 -->
      
      <!-- 여기부터 분쇄도 선택 -->
      <div class="col-lg-4 mb-4-3" style="display:none;" id="grind1" value="grind1">
         
            <div class="card h-100 text-center"  >
               <img class="card-img-top" src="../img/wholebean.jpg" alt="">
               <div class="card-body">
                  <h4 class="card-title">홀 빈(갈지않음)</h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt7">
                  <p class="card-text">분쇄하지 않은<br>원두 상태</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
         
         </div>
         <div class="col-lg-4 mb-4-3" style="display:none;" id="grind2" value="grind2"> 
         
            <div class="card h-100 text-center" >
               <img class="card-img-top" src="../img/handdrip.jpg" alt="">
               <div class="card-body">
                  <h4 class="card-title">핸드드립</h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt8">
                  <p class="card-text">핸드드립에<br>적합한 분쇄도</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
            </a>
         </div>
         <div class="col-lg-4 mb-4-3" style="display:none;" id="grind3" value="grind3">
         
            <div class="card h-100 text-center" >
               <img class="card-img-top" src="../img/espresso.jpg" alt="">
               <div class="card-body">
                  <h4 class="card-title">에스프레소</h4>
                     <input type="button" class="card-subtitle mb-2 text-muted" value="선택" id="bt9">
                  <p class="card-text">에스프레소 머신에<br>적합한 분쇄도</p>
               </div>
               <div class="card-footer">
                  <a href="#">name@example.com</a>
               </div>
            </div>
          
         </div>
     
      <!-- 결제페이지로 이동하는 버튼 -->
      <br>
      <div class="payment" id="payment"  style="display:none;"> 
         <button" class="pay" id="pay" onclick="submit()" >&nbsp; 결제페이지로 이동</button>
      </div>
      <!-- 여기까지 분쇄도 선택 -->
      </div>
      <!-- /.row -->

      <!-- Our Customers -->
      <br>
      <h2>Our Customers</h2>
      <div class="row">
         <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="../img/img3.jpg" style=" width:210px; height:157.5px;" alt="">
         </div>
         <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="../img/img4.jpg" style=" width:210px; height:157.5px;" alt="">
         </div>
         <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="../img/img5.jpg" style=" width:210px; height:157.5px;" alt="">
         </div>
         <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="../img/img6.jpg" style=" width:210px; height:157.5px;" alt="">
         </div>
         <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="../img/img7.jpg" style=" width:210px; height:157.5px;" alt="">
         </div>
         <div class="col-lg-2 col-sm-4 mb-4">
            <img class="img-fluid" src="../img/img8.jpg" style=" width:210px; height:157.5px;" alt="">
         </div>
      </div>
      <!-- /.row -->

   </div>
   <!-- /.container -->

   <!-- Footer -->
   <footer class="py-5 bg-dark">
      <div class="container">
         <p class="m-0 text-center text-white">Copyright &copy;r
            Bean Sisters 2020-노을 | 배혜주 | 이새롬 | 전소현 </p>
      </div>
      <!-- /.container -->
   </footer>

   <!-- Bootstrap core JavaScript -->
   <script src="../vendor/jquery/jquery.min.js"></script>
   <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>