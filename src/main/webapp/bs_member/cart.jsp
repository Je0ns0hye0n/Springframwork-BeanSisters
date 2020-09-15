<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../css/modern-business.css" rel="stylesheet">

<style type="text/css">
.table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
      width:20%;
      display: inline !important;
   }
   .actions .btn{
      width:36%;
      margin:1.5em 0;
   }
   
   .actions .btn-info{
      float:left;
   }
   .actions .btn-danger{
      float:right;
   }
   
   table#cart thead { display: none; }
   table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
   table#cart tbody tr td:first-child { background: #333; color: #fff; }
   table#cart tbody td:before {
      content: attr(data-th); font-weight: bold;
      display: inline-block; width: 8rem;
   }
   
   
   
   table#cart tfoot td{display:block; }
   table#cart tfoot td .btn{display:block;}
   
}
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
            <li class="nav-item"><a class="nav-link" href="../bs_board/boardList.do">후기게시판</a></li>
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
<br>
<br>
<br>

<div class="container">
   <table id="cart" class="table table-hover table-condensed">
   	<c:forEach var="cartDTO" items="${list}">
                <thead>
                  <tr>
                     <th style="width:50%">상품명</th>
                     <th style="width:10%">가격</th>
                     <th style="width:8%">수량</th>
                     <th style="width:22%" class="text-center">소계</th>
                     <th style="width:10%"></th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td data-th="Product">
                        <div class="row">
                           <div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
                           <div class="col-sm-10">
                              <h4 class="nomargin">${cartDTO.c_pro_name}</h4>
                              <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                           </div>
                        </div>
                     </td>
                     <td data-th="Price">${cartDTO.cart_price}</td>
                     <td data-th="Quantity">
                        <input type="number" class="form-control text-center" value="${cartDTO.cart_count}">
                        
                     </td>
                     <td data-th="Subtotal" class="text-center">${cartDTO.cart_price}</td>
                     <td class="actions" data-th="">
                     
                     
                        <!-- 삭제하기  -->
                        <form action="../bs_member/cartDelete.do">
                         
                          <button class="btn btn-danger btn-sm" value="${cartDTO.cart_num}" name="cart_num"> 
                          <i class="fa fa-trash-o"></i>
                           </button>
                     	</form>
                     </td>
                  </tr>
               </tbody>
               
           	</c:forEach>
               <tfoot>
                  <tr class="visible-xs">
                     <td class="text-center"><strong>Total 1.99</strong></td>
                  </tr>
                  <tr>
                     <td><a href="../main_subscription/index.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i>계속 쇼핑하기</a></td>
                     <td colspan="2" class="hidden-xs"></td>
                     <td class="hidden-xs text-center"><strong>
                     <c:if test="${cartShow_sum==null}">
                     	총계:0
                     </c:if>
                     <c:if test="${cartShow_sum!=null}">
                      	총계:${cartShow_sum}
                     </c:if>
                   
                     	</strong></td>
                     <td>
                     <a href="../bs_member/updateState.do" class="btn btn-success btn-block">결제하기<i class="fa fa-angle-right"></i></a></td>
                  </tr>
               </tfoot>
               
               
            </table>
</div>

</body>
</html>
