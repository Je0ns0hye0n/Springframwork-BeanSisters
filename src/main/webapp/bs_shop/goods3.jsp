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

<title>Coffee</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">


   <!-- jQuery : price -->
   <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script type="text/javascript">
      $(document).ready(function() {
         $("#select_price").change(function() {
            $("input[id=price]").val($(this).val());
           var a= $(this).val();
            $("input[id=qty]").val(a/5000);
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
      <!-- Page Heading/Breadcrumbs -->
      <br>

      </insert>

      <h1 class="mt-4 mb-3">SHOP</h1>



      <ol class="breadcrumb">
         <li class="breadcrumb-item"><a href="../bs_shop/goods_shop.jsp">SHOP</a></li>
         <li class="breadcrumb-item active">goods</li>
      </ol>

      <div class="row">

         <!-- Blog Entries Column -->
         <div class="col-md-8">

            <!-- Blog Post -->
            <div class="card mb-4">
               <img class="card-img-top" src="../img/good3.jpg" width="700"
                  height="400" alt="Card image cap">
               <div class="card-body">
                  <h2 class="card-title">머그컵(Black)</h2>
                  <p class="card-text">당신의 창의력을 유지시킬 가장 섹시한 도구 </p>
                  <!-- <a href="#" class="btn btn-primary" >장바구니 &rarr;</a> -->
                  <!-- <button type="submit" class="btn btn-primary">장바구니</button> -->

                  <hr>
					
                
                           
                        <!-- Side Widget -->
                        <div class="card my-4">
                           <h5 class="card-header">수량</h5>
                           <div class="card-body" style="text-align: right">
                              <div class="container">
                                 
                                    <select name="" id="select_price" class="form-control" >
                                       <option value="">-- 수량 --</option>
                                       <option value=5000>1</option>
                                       <option value=10000>2</option>
                                       <option value=15000>3</option>
                                       <option value=20000>4</option>
                                    </select>
            
                              </div>
                               <input type="hidden" name="id" value="g1011" /> <input
                     type="hidden" name="name" value="sample1" /> <input
                     type="hidden" name="price" value="10000" />
                  <table class="tablesorter" border="0" cellpadding="0"
                     cellspacing="1">
                     <thead>
                        <tr>
                           <th style="text-align: center" width="20%">상품명</th>
                           <th style="text-align: center" width="20%">단가</th>
                           <th style="text-align: center" width="20%">수량</th>
                           
                           <th style="text-align: center" width="20%">총 가격</th>
                           
                           
                           <th style="text-align: center" width="20%">상품 옵션</th>
                           <th width="20%"></th>
                        </tr>
                     </thead>
                     <tr>
                  <form action="../bs_shop/insertCart.do" method="post" onsubmit="return isLogin();">
                     
                        <td>
                        <input type="text" name="c_pro_name" value="머그컵(Black)" readonly>
                        </td>
                        
                        
                        <td style="text-align: right">5,000원</td>
                        
                        <td style="text-align: center">
                        <input type="text" id="qty" name="cart_count"  style="text-align: right; width: 100px;" maxlength="3" readonly/>
                        </td>
                        
                     
                        <td style="text-align: center">
                        <input type="text" id="price" name="cart_price"  style="text-align: right; width: 100px;" maxlength="3" readonly />
                        </td>
                        

                        <td style="text-align: center">
                        <input type="submit" class="cartInsert" id="cartInsert" value="장바구니 담기">
                        </td>
                  </form>
                              <input type="text" id="input" name="input" value=""
                                 style="background-color: transparent; border: 0 solid black; text-align: right;"
                                 disabled>
                              <div id="output"></div>
                           </div>
                        </div>



                        
                     </tr>
                  </table>



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