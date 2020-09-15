<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}


/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
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
.loginbtn {
  padding: 14px 20px;
  background-color: #476600;
}

/* Float cancel and signup buttons and add an equal width */
.loginbtn, .signupbtn {
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
<form action="login.do" style="border:1px solid #ccc">
  <div class="container">
      <h1>login</h1>
  
    <hr>
    <label for="mem_id"><b>ID</b></label>
    <input type="text" placeholder="Enter ID" name="mem_id"  required>
    
    <label for="mem_pw1"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="mem_pw1" required>


    <div class="clearfix">
        <button type="submit" class="loginbtn" href="../main_subscription/index.jsp">Login</button>	
      <button type="button" class="signupbtn" onclick="location.href='../bs_member/signForm.jsp'">아직 회원가입을 안하셨나요?</button>
    
    </div>
  </div>
  </form>

</body>
</html>

