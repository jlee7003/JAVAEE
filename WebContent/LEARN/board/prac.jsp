<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>EUIHO BOARD</title>
</head>
<body>
	<style type="text/css">
.jumbotron {
	/*   스타일시트를 내부적으로 내용 추가하기 */
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
	height: 500px;
	background-image: url("img/img_lights.jpg");
	background-size: cover;
}

.navbar-default {
	
}

.navbar-nav li {
	
}

.navbar-brand {
	
}

.jumbotron .text-center {
	margin-top: 20px;
}

.container-fluid {
	
}
</style>
	<nav class="navbar navbar-default">
		<!-- 	class=container-fluid: container의 max width -->
		<!-- @media (max-width: 500px): max width 500이하의 사용자가 접근 했을 경우 아래의 코드를 실행시킴
      {
            div
            {
            
            
            
            }
      } -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">EUIHO </a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">메인<span class="sr-only"></span></a></li>
				<!-- 				active: select되어진 상태임을 뜻함 -->
				<li><a href="#">계시판</a></li>
				<li><a href="#">강사진</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">강의<span class="caret"></span> <!--             haspopup: 클릭 했을떄 어떠한 문자가 나오게 -->
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">C언어</a></li>
						<li><a href="#">자바</a></li>
						<li><a href="#">안드로이드</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>

		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1 class="text-center">의호's board에 오신 것을 환영합니다.</h1>
			<p class="text-center">이 사이트는 이의호의 계시판으로 다양한 정보들이 있습니다.</p>
			<p class="text-center">
				<a class="btn btn-primary btn-lg" href="#" role=button>계시판으로 가기</a>
			</p>
		</div>

	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>