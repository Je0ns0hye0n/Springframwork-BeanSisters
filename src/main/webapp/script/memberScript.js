function checkWrite() {
   var frm = document.writeForm;
   if(!frm.name.value) {
      alert("이름을 입력하세요.");
      frm.name.focus();
   } else if(!frm.id.value) {
      alert("아이디를 입력하세요.");
      frm.id.focus();
   } else if(!frm.pwd.value) {
      alert("비밀번호를 입력하세요.");
      frm.pwd.focus();
   } else if(frm.pwd.value != frm.repwd.value) {
      alert("비밀번호가 맞지 않습니다.");
   } else {
      frm.submit();
   }
}

function checkLogin() {
   //alert("test")
   frm = document.loginForm;
   if(!frm.id.value) {
      alert("아이디를 입력해주세요.");
      frm.id.focus();
   } else if (!frm.pwd.value) {
      alert("비밀번호를 입력해주세요.");
      frm.pwd.focus();
   } else {
      frm.submit();
   }
}

function checkId() {
   var sId = document.writeForm.id.value;
   if(sId == "") {
      alert("먼저 아이디를 입력하세요.");
      document.writeForm.id.focus();
   } else {
      window.open("checkId.jsp?id=" + sId, "", 
            "width=350 height=100 left=500 top=200");
   }
}

function checkModify() {
   //alert('test');
   var frm = document.modifyForm;
   if(!frm.name.value) {
      alert("이름을 입력하세요.");
      frm.name.focus();
   } else if(!frm.mem_pw1.value) {
      alert("비밀번호를 입력하세요.");
      frm.pwd.focus();
   } else if(frm.mem_pw1.value != frm.repwd.value) {
      alert("비밀번호가 맞지 않습니다.");
   } else {
      frm.submit();
   }
}























