<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../shadow/css/shadowbox.css">

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
	width:700px;
} 
h1{
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>

<!-- import -->
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:['iframe']
})
$(function(){
	/*$('#idCheckBtn').click(function(){
		Shadowbox.open({
			content:'../member/idcheck.do',
			player:'iframe',
			width:370,
			height:180,
			title:'아이디 중복체크'
		})
	})
	
	$('#nickCheckBtn').click(function(){
		Shadowbox.open({
			content:'../member/nickcheck.do',
			player:'iframe',
			width:370,
			height:180,
			title:'닉네임 중복체크'
		})
	})*/
	
	$('#postBtn').click(function(){
		Shadowbox.open({
			content:'../member/postfind.do',
			player:'iframe',
			width:500,
			height:350,
			title:'우편번호 검색'
		})
	})
	
	$('#joinBtn').click(function(){
		$('#joinFrm').submit();
		
	}) 
})
/* function check_pwd(){
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
} */
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
                        <a href="login.jsp" class="btn btn-dark mt-1 btn-sm">로그인</a><a href="signup.jsp" class="btn btn-danger mt-1 btn-sm">회원가입</a>
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
   </header> <!-- End Of Page Header -->

   <!-- main content -->
   <div class="container">

      <!-- Inputs -->
      <div class="row">
        <form method="post" action="../member/join_ok.do" name="joinFrm" id="joinFrm">      
	      <table class="table">
	          <tr>
	            <th class="text-left" width=30%>아이디</th>
	            <td width=70%>
	              <input type=text name=id id=id size=20 class="input-sm">
	             <!--  <input type=button value="중복체크" class="btn btn-sm btn-success" id="idCheckBtn"> -->
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
	              <input type=text name=name id=name size=20 class="input-sm">
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-left" width=30%>닉네임</th>
	            <td width=70%>
	              <input type=text name=nickname id=nickname size=20 class="input-sm">
	             <!--  <input type=button value="중복체크" class="btn btn-sm btn-success" id="nickCheckBtn"> -->
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-left" width=30%>성별</th>
	            <td width=70%>
	              <input type=radio name=sex value="남자" checked>남자
	              <input type=radio name=sex value="여자">여자
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-left" width=30%>생년월일</th>
	            <td width=70%>
	              <input type=date name=birthday size=20>
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-left" width=30%>이메일</th>
	            <td width=70%>
	              <input type=text name=email id=email size=55 class="input-sm">
	              <input type=button value="이메일체크" class="btn btn-sm btn-danger" id="emailBtn">
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-right" width=10%>우편번호</th>
	            <td width=90% class="inline">
	              <input type=text name=post id=post size=10 class="input-sm">
	              <input type=button value="우편번호검색" class="btn btn-sm btn-info" id="postBtn">
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-right" width=10%>주소</th>
	            <td width=90% class="inline">
	              <input type=text name=addr1 id=addr1 size=55 class="input-sm" readonly>
	            </td>
	          </tr>
	          
	          <tr>
	            <th class="text-right" width=10%>상세주소</th>
	            <td width=90% class="inline">
	              <input type=text name=addr2 id=addr2 size=55 class="input-sm">
	            </td>
	          </tr>
	   
	   <!-- <tr>
	          <th class="text-left" width=30%>아이디</th>
	          <td width=70%>
	            <input type=text name=id onkeydown="inputIdChk()" class=input-sm" size=15>
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
	        </tr> -->
	        <!-- <tr>
	           <th class="text-left" width=30%>주소</th>
	           <td width=70%>
				    <input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" placeholder="주소"><br>
					<input type="text" id="sample6_detailAddress" placeholder="상세주소">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목">
					
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
					    function sample6_execDaumPostcode() {
					        new daum.Postcode({
					            oncomplete: function(data) {
					                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
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
					                    /* document.getElementById("sample6_extraAddress").value = extraAddr; */
					                
					                } /* else {
					                    document.getElementById("sample6_extraAddress").value = '';
					                } */
					
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('sample6_postcode').value = data.zonecode;
					                document.getElementById("sample6_address").value = addr;
					                // 커서를 상세주소 필드로 이동한다.
					                document.getElementById("sample6_detailAddress").focus();
					            }
					        }).open();
					    }
					</script>
			   </td>
	         </tr> -->
	         <tr>
	          <td colspan="2" class="text-center">
	            <input type=button value="회원가입" class="btn btn-sm btn-info" onclick="board_write()" id="joinBtn">
	            <input type=button value="취소" class="btn btn-sm btn-info"
	             onclick="javascript:history.back()">
	          </td>
	        </tr>
	        
	      </table>
	      </form>
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
