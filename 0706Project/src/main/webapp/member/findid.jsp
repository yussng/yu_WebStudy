<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* html { */
/*   height: 100%; */
/* } */
/* body { */
/*   margin:0; */
/*   padding:0; */
/*   font-family: sans-serif; */
/*   background: linear-gradient(#141e30, #243b55); */
/* } */

.login-box {
  position: relatives;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  /* transform: translate(-50%, -50%); */
  margin : 0px auto;
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 1 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}

.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  /* pointer-events: none; */
  transition: .5s;
}

.login-box .user-box input:focus ~ label,

.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}
</style>
<script type="text/javascript">
$(function(){
	$('#findidBtn').on("click",function(){
		let name=$('#name').val();
		if(name.trim()=="")
		{
			$('#dong').focus();
			return;
		}
		$.ajax({
			type:'post',
			url:'../member/findidafter.do',
			data:{"name":name},
			success:function(result)
			{
				alert(result)
				$('#result').html(result);
			}
		})
	})
})
/* function findId_click(){
	var name=$('#name').val()
	var phone=$('#email').val()
	
	$.ajax({
		url:"../find_id",
		type:"POST",
		data:{"name":name,"email":email},
		success:function(data){
			if(data==0){
				$('#id_value').text("회원 정보를 확인해주세요!");
				$('#name').val('');
				$('#email').val('');
			}
		}
		error:function(){
			alert("에러입니다");
		}
	})
} */
</script>
<script type="text/javascript">
$('#joinBtn').click(function(){
	   $('#joinFrm').submit();
})
})
</script>
</head>
<body>
<div class="row" style="padding-top: 30px">
  <div class="login-box">
    <h2>아이디 찾기</h2>
    <form class="form-horizontal" role="form" method="post" action="starters?cmd=findIdAction">
      <div class="user-box">
        <input type="text" name="name" id="name" placeholder="이름" required="required">
        <label>이름</label>
      </div>
      <div class="user-box">
        <input type="email" name="email" id="email" placeholder="이메일" required="required">
        <label>이메일</label>
      </div>    
      <div class="text-center">
        <a href="../member/findidafter" id="findidBtn" onclick="id_search()">
        	<span></span>
      		<span></span>
      		<span></span>
      		<span></span>
      		아이디 찾기
        </a>
        <!-- <button type="submit" class="btn btn-outline-secondary findbtn">찾기</button> -->
      </div> 
      <div class="text-center">
        <a href="../member/login.do"> 
      	  <span></span>
      	  <span></span>
      	  <span></span>
      	  <span></span>
     	  로그인
	    </a>
	    <a href="../member/join.do" id="logBtn"> 
      	  <span></span>
      	  <span></span>
      	  <span></span>
      	  <span></span>
     	  회원가입
	    </a>
      </div>     
    </form>
    <div>
    </div>
  </div>
</div>
</body>
</html>