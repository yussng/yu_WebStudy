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
.container{
	margin-top: 50px;
}
.row{
	margin: 0px auto;
	width:700px;
} 
h1{
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<!-- import -->
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function check_pwd(){
	if(document.getElementById('pwd1').value !='' && document.getElementById('pwd2').value!=''){
        if(document.getElementById('pwd1').value==document.getElementById('pwd2').value){
            document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
            document.getElementById('check').style.color='blue';
        }
        else{
            document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
            document.getElementById('check').style.color='red';
        }
	}
}
</script>
<script>
$(function (){
	var idval=$('#bbb');
	 $('#aisi').change(function(){
		 var element=$(this).find('option:selected');
		 var myTag
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
                <div class="navbar-nav ml-auto">
                    <li class="nav-item">
                        
                    </li>
                </div>
            </div>
        </div>
    </nav>
    <!-- End Of Page Second Navigation -->

   <!-- Page Header -->
   <header class="header header-mini"> 
      <div class="header-title">회원가입</div> 
      <nav aria-label="breadcrumb">
         <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Components</li>
         </ol>
      </nav>
   </header> <!-- End Of Page Header -->

   <!-- main content -->
   <div class="container">

      <!-- Inputs -->
      <div class="row">
        <form method=post action="insert_ok.jsp" name=frm
	        enctype="multipart/form-data"
	      >      
	      <table class="table">
	        <tr>
	          <th class="text-left" width=30%>아이디</th>
	          <td width=70%>
	            <input type=text name=id onkeydown="inputIdChk()" class=input-sm" size=15 placeholder="ID를 입력하세요">
	            <button type=button onclick="fn_dbCheckId()" name=dbCheckId class=checkId>중복확인</button>
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>비밀번호</th>
	          <td width=70%>
	            <input type=password name=pwd id=pwd1 onchange="check_pwd()" class=input-sm" size=20>
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>비밀번호 확인</th>
	          <td width=70%>
	            <input type=password name=pwd id=pwd2 onchange="check_pwd()" class=input-sm" size=20><br><span id="check"></span>
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>이름</th>
	          <td width=70%>
	            <input type=text name=name class=input-sm" size=15>
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>닉네임</th>
	          <td width=70%>
	            <input type=text name=name class=input-sm" size=15>
	            <button type=button onclick="fn_dbCheckId()" name=dbCheckId class=checkId>중복확인</button>
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>성별</th>
	          <td width=70%>
	            <input type=radio name=sex class=input-sm" size=15 option="남자" checked>남자 &nbsp;
	            <input type=radio name=sex class=input-sm" size=15 option="여자">여자
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>생년월일</th>
	          <td width=70%>
	            <input type=date name=birth class=input-sm">
	          </td>
	        </tr>
	        <tr>
	          <th class="text-left" width=30%>이메일</th>
	          <td width=70%>
	            <input type=text name=email1 class="input-sm" size=20>
	            <span>@</span>
	            <input type=text name=email2 class="input-sm" size=20 placeholder="이메일을 선택하세요">
	            	<select id="select">
	            		<option value="" disabled selected>E-mail 선택</option>
	            		<option value="directly" id="textEmail">직접 입력하기</option>
	                    <option value="naver.com" id="naver.com">naver.com</option>
	                    <option value="hanmail.net" id="hanmail.net">hanmail.net</option>
	                    <option value="gmail.com" id="gmail.com">gmail.com</option>
	                    <option value="nate.com" id="nate.com">nate.com</option>
                    </select>
	          </td>
	        </tr>
	        <tr>
	           <th class="text-left" width=30%>주소</th>
	           <td width=70%>
				    <input type="text" id="sample3_postcode" placeholder="우편번호">
					<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample3_address" placeholder="주소"><br>
					<input type="text" id="sample3_detailAddress" placeholder="상세주소">
					
					<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
					</div>
					
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
					    // 우편번호 찾기 찾기 화면을 넣을 element
					    var element_wrap = document.getElementById('wrap');
					
					    function foldDaumPostcode() {
					        // iframe을 넣은 element를 안보이게 한다.
					        element_wrap.style.display = 'none';
					    }
					
					    function sample3_execDaumPostcode() {
					        // 현재 scroll 위치를 저장해놓는다.
					        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
					                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
					                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					                var addr = ''; // 주소 변수
					                var extraAddr = ''; // 참고항목 변수
					
					                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					                    addr = data.roadAddress;
					                } else { // 사용자가 지번 주소를 선택했을 경우(J)
					                    addr = data.jibunAddress;
					                }
					
					                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					                if(data.userSelectedType === 'R'){
					                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
					                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					                        extraAddr += data.bname;
					                    }
					                    // 건물명이 있고, 공동주택일 경우 추가한다.
					                    if(data.buildingName !== '' && data.apartment === 'Y'){
					                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					                    }
					                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					                    if(extraAddr !== ''){
					                        extraAddr = ' (' + extraAddr + ')';
					                    }
					                    // 조합된 참고항목을 해당 필드에 넣는다.
					                    document.getElementById("sample3_extraAddress").value = extraAddr;
					                
					                } else {
					                    document.getElementById("sample3_extraAddress").value = '';
					                }
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('sample3_postcode').value = data.zonecode;
					                document.getElementById("sample3_address").value = addr;
					                // 커서를 상세주소 필드로 이동한다.
					                document.getElementById("sample3_detailAddress").focus();
					
					                // iframe을 넣은 element를 안보이게 한다.
					                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					                element_wrap.style.display = 'none';
					
					                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
					                document.body.scrollTop = currentScroll;
					            },
					            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
					            onresize : function(size) {
					                element_wrap.style.height = size.height+'px';
					            },
					            width : '100%',
					            height : '100%'
					        }).embed(element_wrap);
					
					        // iframe을 넣은 element를 보이게 한다.
					        element_wrap.style.display = 'block';
					    }
					</script>
			   </td>
	         </tr>
	         <tr>
	          <td colspan="2" class="text-center">
	            <input type=button value="회원가입" class="btn btn-sm btn-info" onclick="board_write()">
	            <input type=button value="취소" class="btn btn-sm btn-info"
	             onclick="javascript:history.back()">
	          </td>
	        </tr>
	      </table>
	      </form>
         <!-- <div class="col-md-6">
         	<div class="form-group">
               아이디<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="ID를 입력하세요">
            </div>   
            <div class="form-group">
               비밀번호<input type="password" class="form-control" id="exampleFormControlInput1" placeholder="비밀번호를 입력하세요">
            </div>
            <div class="form-group">
               비밀번호 확인<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="비밀번호를 확인하세요">
            </div>   
            <div class="form-group">
               이름<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="이름">
            </div>
            <div class="form-group">
               닉네임<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="닉네임">
            </div>   
         	<div class="form-group">
               성별
            </div>   
            <div class="form-group">
               생년월일<input type="date" class="form-control" id="exampleFormControlInput1">
            </div>
            <div class="form-group">
               이메일<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email address">
            </div>   
            <div class="form-group">
               주소<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="이름">
            </div>
         </div> -->
      </div> <!-- end of inputs -->   

      
   <!-- Page Footer -->
    <footer class="page-footer">
        <div class="container">
            <p class="border-top mb-0 mt-4 pt-3 small">&copy; <script>document.write(new Date().getFullYear())</script>, JoeBlog Created By <a href="https://www.devcrud.com" class="text-muted font-weight-bold" target="_blank">DevCrud.</a>  All rights reserved </p> 
        </div>      
    </footer>
    <!-- End of Page Footer -->
   
   <!-- core  -->
   <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
   <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

</body>
</html>
