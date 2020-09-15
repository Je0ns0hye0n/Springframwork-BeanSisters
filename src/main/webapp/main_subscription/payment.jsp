<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   //정기배송 결제페이지
   //타입,맛, 그라인드 데이터 받아오기 
   String coffee=request.getParameter("coffee");
   String taste=request.getParameter("taste");
   String grind=request.getParameter("grind");
%>

<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>결제페이지</title>
  
  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">
  
  <!-- w3schools Input Type -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


  <!-- 배송요청 메세지 -->
  <script type="text/javascript">
     function showfield(name) {
        if(name=="직접 입력하기")document.getElementById("selfmsg").innerHTML='-- 배송요청 메세지 --: <input type="text" name="other" />';
        else document.getElementById("selfmsg").innerHTML='';
     }
     
     function isLogin(mem_id) {
         if(${mem_id == null}) {
            alert("로그인 먼저 하세요.");
            return false;
         } else {
    
         }
      }

  </script>
  
  <!-- jQuery Calendar -->
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="./jquery-ui.1.12.1/datepicker-ko.js"></script>
  <style>
    .ui-datepicker-trigger{cursor: pointer;}
    .hasDatepicker{cursor: pointer;}
  </style>
  <script>
     $(function() {
        // alert("cal");
      $("#datepicker").datepicker({
      dateFormat: 'yy-mm-dd',
      showOtherMonths: true,
      showMonthAfterYear: true,
      changeYear: true,
      changeMonth: true,
      showOn: "both",
      buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
      buttonImageOnly: true,
      buttonText: "선택",
      yearSuffix: "년",
      monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      dayNames: ['일요일' ,'월요일 ', '화요일', '수요일 ', '목요일', '금요일', '토요일'],
      minDate: "-1Y",
      maxDate: "+10Y",
      onSelect: function(dateText, inst) {
          $("input[id='dateSelect']").val(dateText);
       }
      });
     });
     
     
  </script>
  
  <!-- PayCheck function -->
  <script type="text/javascript">
   
     
    
  </script>
   
  <!-- Bootstrap core JavaScript 
  <script src="../vendor/jquery/jquery.min.js"></script> 
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script> 
  -->

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
  
     <div class="1.title">
        <br><br><br>
        <h2>SUBSCRIBE</h2>
        <h6>정기배송</h6>
        <hr>
     </div>
     
     <div class="2.info">
        <div id="customer">
        <br>
           <p>배송정보<p>
           <!-- 
           <input type="text" placeholder="받는분 성함" name="mem_id" required>
           <input type="text" placeholder="휴대폰번호" name="phone" required>
           <input type="text" placeholder="주소" name="addr" required>
           -->
           
            <form action="../bs_member/getMem.do?coffee=<%=coffee%>&taste=<%=taste%>&grind=<%=grind%>" method="post" onsubmit="return isLogin(${memberDTO.mem_id});">
           <div class="container">
             
              <button id="curr_info">현재 정보 가져오기</button>
                 <div class="form-group w-25">
                    <input type="text" class="form-control" id="name" placeholder="받는분 성함" name="name" value="${memberDTO.name}">
                 </div>
                 <div class="form-group w-25">
                    <input type="text" class="form-control" id="phone" placeholder="휴대폰번호" name="phone" value="${memberDTO.phone}">
                 </div>
                 <div class="form-group w-50">
                    <input type="text" class="form-control" id="addr" placeholder="주소" name="addr" value="${memberDTO.addr}">
                 </div>
             
           </div>
           </form>
        </div>
     
        <div id="msg">
           <div class="container">
              <select class="form-control" style="width:auto" name="msgSelect" id="msgSelect" onchange="showfield(this.options[this.selectedIndex].value)">
                 <option selected="selected">-- 배송요청 메세지 --</option>
                 <option value="배송 전에 연락 주세요.">배송 전에 연락 주세요.</option>
                 <option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>
                 <option value="부재시 전화 또는 문자 주세요.">부재시 전화 또는 문자 주세요.</option>
                 <option value="직접 입력하기">직접 입력하기</option>
              </select>
           </div>
        </div>
        <div id="selfmsg"></div>
   <br>
     </div>
     
     <div class="3.pay">
        <div id="pay">
           <p>결제 방법</p>
           <div class="container">
              <select class="form-control" style="width:auto">
                 <option selected="selected">-- 결제 방법-- </option>
                 <option>카드</option>
                 <option>휴대폰결제</option>
                 <option>무통장입금</option>
                 <option>카카오페이</option>
              </select>
           </div>
        </div>
     <br>
     </div>
      
      
      <!-- 선택한 사항 주문한 DB에 담아야 함 -->
     
      <form action="../bs_member/pay.do" method="post" onsubmit="return isLogin(${memberDTO.mem_id});">
     <div class="4.choice">
        <div id="choice">
           <p>선택사항</p>
           <div class="container">
           		<div class="Form-group w-25">
	         	  <input type="text" name="sp_mem_id" class="form-control" value="<%=name %>" style="display:none">
	       		  <input type="text" name="sp_coffee_name" class="form-control" value="<%=coffee%>" readonly> 
	        	  <input type="text" name="sp_coffee_taste" class="form-control" value="<%=taste%>" readonly> 
	        	  <input type="text" name="sp_coffee_grinding" class="form-control" value="<%=grind%>" readonly> 
	        	</div>
	       </div>

      <br>
        </div>
        <div id="date">
         <p>출고일</p>
         <div class="container">
          
                    <div class="form-group w-25">
                  일자: <input type="text" id="datepicker" class="form-control" placeholder="선택하세요">
                  </div>
                   <input type="text" id="dateSelect" style="display:none" name="sp_dday">
           
         </div>
      <br>
        </div>
        <div id="period">
           <p>배송주기</p>
           <div class="container">
              <select class="form-control" style="width:auto" name="sp_period">
                 <option selected="selected" value="주기">-- 주기 --</option>
                 <option value="1주">1주</option>
                 <option value="2주" >2주</option>
                 <option value="4주">4주</option>
                 <option value="선택안함">선택안함</option>
              </select>
           </div>
        </div>
     </div>
     
     <div class="5.button">
     <br>
        <!-- 장바구니 클릭 시 0 > 장바구니 페이지에서 확인가능 cart.do로 controller처리 -->
       <!--  <button type="submit" class="btn btn-warning" id="cart" onclick="location.href='../bs_member/cart.jsp'">장바구니</button> -->
        <!-- 결제하기 클릭 시 1 > myPage에서 확인가능  myPage.jsp로 이동-->

        <button type="submit" class="btn btn-danger" id="pay">결제하기</button>
        </form>
       
     </div>
  <br> 
  </div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 
        Bean Sisters 2020-노을 | 배혜주 | 이새롬 | 전소현 </p>
    </div>
    <!-- /.container -->
  </footer>

</body>
</html>