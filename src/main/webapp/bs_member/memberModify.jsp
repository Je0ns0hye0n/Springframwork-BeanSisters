<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}


/* Full-width input fields */
input[type=text], input[type=password],input[type=tel] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=tel]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>   
   <form action="memberModify.do" name="modifyForm" method="post" style="border:1px solid #ccc">
 	<div class="container">
     <h1>회원 수정</h1>
    <p>Please fill in this form to create an account.</p>
     <hr>
     
     <label for="name"><b>Name</b></label>
     <input type="text" placeholder="Enter Name" name="name" value="${memberDTO.name}">
     
    <label for="mem_id"><b>ID</b></label>
     <input type="text" placeholder="Enter ID" name="mem_id" value="${memberDTO.mem_id}">
     
     <label for="mem_pw1"><b>Password</b></label>
     <input type="password" placeholder="Enter Password" name="mem_pw1" required>
    
     <label for="repwd"><b>Repeat Password</b></label>
     <input type="password" placeholder="Repeat Password" name="repwd" required>
    
     <label for="phone"><b>phone</b></label>
     <input type="tel" placeholder="Repeat tel" name="phone" value="${memberDTO.phone }">
   
     <label for="addr"><b>addr</b></label>  
     <input type="text" placeholder="Repeat addr" name="addr" value="${memberDTO.addr }">
     
      <label for="age_group"><b>age_group</b></label>
           <select name="age_group">
               <option value="0">--선택하세요--</option>
               <option value="1">10대</option>
               <option value="2">20대</option>
               <option value="3">30대</option>
              <option value="4">40대</option>
               <option value="5">50대 이상</option>
            </select>


    <div class="clearfix">
      <button type="reset" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Modify Up</button>
    </div>
  </div>
</form>

</body>
</html>
