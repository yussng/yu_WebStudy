<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@400;700&family=Nanum+Gothic&family=Noto+Sans+KR:wght@700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
{
}
.container{
	margin-top: 50px;
}
.row{
	margin: 0px auto;
	width:500px;
}
h1{
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<body>
  <div class="container">
    <h1>사원 정보</h1>
    <div class="row">
     <form method=post action="output2.jsp">
      <table class="table">
        <tr>
          <th width=25%>이름</th>
          <td width=75%><input type=text name=name size=15 class="input-sm"></td>
        </tr>
        <tr>
          <th width=25%>성별</th>
          <td width=75%><input type=text name=sex size=15 class="input-sm"></td>
        </tr>
        <tr>
          <th width=25%>부서</th>
          <td width=75%><input type=text name=dept size=15 class="input-sm"></td>
        </tr>
        <tr>
          <th width=25%>직위</th>
          <td width=75%><input type=text name=job size=15 class="input-sm"></td>
        </tr>
        <tr>
          <th width=25%>연봉</th>
          <td width=75%>
            <input type=number min="3000" max="4500" step="100">
          </td>
        </tr>
        <tr>
          <td colspan="2" class="text-center">
            <button class="btn btn-sm btn-danger">전송</button>
          </td>
        </tr>
      </table>
     </form>
    </div>
  </div>
</body>
</html>