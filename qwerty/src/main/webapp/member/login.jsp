<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta name="description" content="Start your development with JoeBLog landing page.">
   <meta name="author" content="Devcrud">
   <title>JoeBLog | Components</title>
   <!-- font icons -->
   <link rel="stylesheet" href="../assets/vendors/themify-icons/css/themify-icons.css">
   <!-- Bootstrap + Steller  -->
   <link rel="stylesheet" href="../assets/css/joeblog.css">
   
<style type="text/css">
.row{
	margin: 0px auto;
	width:300px;
} 
h1{
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<!-- import -->
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#logoutBtn').click(function(){
		location.href="../member/logout.do"
	})
	$('#logBtn').click(function(){
		// 유효성 검사 => 반드시 입력
		let id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
			return;
		}
		
		let pwd=$('#pwd').val();
		if(pwd.trim()=="")
		{
			$('#pwd').focus();
			return;
		}
		
		// 전송 => 실행결과를 가지고 온다 (자체 처리) (요청 = 응답 : Ajax,Vue,React)
		$.ajax({
			type:'post',
			url:'../member/login.do',
			data:{"id":id,"pwd":pwd},
			success:function(result) //NOID,NOPWD,OK
			{
				let res=result.trim();
				if(res==='NOID')
				{
					alert("아이디가 존재하지 않습니다!");
					$('#id').val("");
					$('#pwd').val("");
					$('#id').focus();
				}
				else if(res==='NOPWD')
				{
					alert("비밀번호가 틀립니다!")
					$('#pwd').val("");
					$('#pwd').focus("");
				}
				else
				{
					location.href="../main/main.do"
				}
			}
		})
	})
})
</script>

</head>
<body>
 <nav class="navbar navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../assets/imgs/logo.png" alt="">
            </a>
            <div class="socials">
                <a href="javascript:void(0)"><i class="ti-facebook"></i></a>
                <a href="javascript:void(0)"><i class="ti-twitter"></i></a>
                <a href="javascript:void(0)"><i class="ti-pinterest-alt"></i></a>
                <a href="javascript:void(0)"><i class="ti-instagram"></i></a>
                <a href="javascript:void(0)"><i class="ti-youtube"></i></a>
            </div>
        </div>
    </nav> 
    <nav class="navbar custom-navbar navbar-expand-md navbar-light bg-primary sticky-top">
        <div class="container">
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">                     
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="no-sidebar.html">레시피</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="single-post.html">맛집</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="single-post.html">상품</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="single-post.html">공유주방</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            더보기
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">자유게시판</a>
                            <a class="dropdown-item" href="#">묻고 답하기</a>
                            <!-- <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a> -->
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
<!--  -->                 
                    <form class="d-flex tm-search-form">
            			<input class="form-control tm-search-input" type="search" placeholder="Search" aria-label="Search" style="width:70%;">
            			<button class="btn btn-outline-success tm-search-btn" type="submit"style="width:30%">검색
                		<i class="fas fa-search"></i>
           				</button>
        			</form>
                </ul>
                <div class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="components.html" class="btn btn-dark mt-1 btn-sm">로그인</a><a href="#" class="btn btn-danger mt-1 btn-sm">회원가입</a>
                    </li>
                </div>
            </div>
        </div>
    </nav>
    <!-- End Of Page Second Navigation -->

<!-- ################################################################################################ -->
<%-- <div class="wrapper row1">
  <header id="header" class="clear">
    <div class="fl_right">
     <c:if test="${sessionScope.id==null }">
      <ul class="inline">
        <li><i class="fa fa-phone"></i><input type=text name=id class="input-sm" size=10 id=id></li>
        <li><i class="fa fa-envelope-o"></i><input type=password name=pwd class="input-sm" size=10 id=pwd></li>
        <li><input type=button value="로그인" class="btn btn-sm btn-danger" id="logBtn"></li>
      </ul>
     </c:if>
     
     <c:if test="${sessionScope.id!=null }">
      <ul class="inline">
        <li>${sessionScope.name }(${sessionScope.admin=='y'?"관리자":"일반사용자" }) 님 로그인중입니다</li>
        <li><input type=button value="로그아웃" class="btn btn-sm btn-danger" id="logoutBtn"></li>
      </ul>
     </c:if>
    </div>
  </header>
</div> --%>
<!-- ################################################################################################ --> 

  <div class="container">
    <h1>Login</h1>
    <div class="row">
      <form method=post action=login_ok.jsp id="frm">
      <table class="table">
        <tr>
          <td width=20%>ID</td>
          <td width=80%>
            <input type=text name=id size=15 class="input-sm" id=id>
          </td>
        </tr> 
        <tr>
          <td width=20%>Password</td>
          <td width=80%>
            <input type=pssword name=pwd size=15 class="input-sm" id=pwd>
          </td>
        </tr>
        <tr>
          <td colspan="2" class="text-center">
            <span id="print" style="color:red"></span>
          </td>
        </tr>
        <tr>
          <td colspan="2" class="text-center">
            <input type=button class="btn btn-sm btn-info" value=로그인 id="logBtn">
          </td>
        </tr>  
        <tr>
          <td colspan="2" class="text-center">
            <input type=button class="btn btn-sm btn-danger" value="ID/PWD 찾기" id="findBtn">
            <a href="signup.jsp" class="btn btn-sm btn-success">회원가입</a>
          </td>
        </tr>     
      </table>
      </form>
    </div>
  </div>
   
   <!-- core  -->
   <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
   <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

</body>
</html>