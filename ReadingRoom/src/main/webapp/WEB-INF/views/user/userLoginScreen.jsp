<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	
<!-- header 설정 -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="We Reading!" name="title" />
</jsp:include>
	
	
<style>
	/* 기본 css 설정 */
	.col-6 {
		height: 40em;
		background-color: rgb(60,60,60);
	}
	/* 좌측 화면 설정 */
	#screenOut {
		width: 100%;
		height: 96%;
		margin-top: 2%;
		margin-bottom: 2%;	
		padding-top: 1%;
		padding-bottom: 1%;
		background-color: rgb(120,120,120);
		border-radius: 25px;
	}
	/* 화면 영역 */
	#screenTop {
		border-radius: 25px;
		margin: 0 auto;
		height: 80%;
		width: 98%;
		background-color: black;
	}
	/* index 배경화면 영상 */
	#indexVideo {
		overflow: auto;
		margin-left: 1%;
		margin-right: 1%;
		width: 98%;
		height: 100%;
	}
	
	
	/* -------------- */
	
	/* 로그인 div 설정 */
	#loginDiv {
		background-color: rgba(255,255,255,0.4);
		width: 98%;
		height: 50%;
		
		text-align: center;
		font-family: 'Dancing Script', cursive;
		font-size: 30px;
		font-weight: bolder;
		
		position: relative;
		top: -75%;
		left: 1%;
		
		/* 서서히 나타나는 애니메이션 */
		animation: fadein 2s;
	    -moz-animation: fadein 2s; /* Firefox */
	    -webkit-animation: fadein 2s; /* Safari and Chrome */
	    -o-animation: fadein 2s; /* Opera */
	}
	@keyframes fadein {
	    from {
	        opacity:0;
	        height:10%;
	    }
	    to {
	        opacity:1;
	        height: 50%;
	    }
	}
	@-moz-keyframes fadein { /* Firefox */
	    from {
	        opacity:0;
	        height:10%;
	    }
	    to {
	        opacity:1;
	        height: 50%;
	    }
	}
	@-webkit-keyframes fadein { /* Safari and Chrome */
	    from {
	        opacity:0;
	        height:10%;
	    }
	    to {
	        opacity:1;
	        height: 50%;
	    }
	}
	@-o-keyframes fadein { /* Opera */
	    from {
	        opacity:0;
	        height:10%;
	    }
	    to {
	        opacity: 1;
	        height: 50%;
	    }
	}
	/* 로그인 타이틀 설정*/
	#loginTitle {
		margin: 2% auto;
		font-size: 30px;
	}
	
	/* 유저아이디, 유저비밀번호 input */
	#userId, #userPw {
		display: block;
		appearance: none;
		outline: 0;
        width: 250px;
        border: 1px solid rgba(60,60,60,0.4);
        border-radius: 3px;
        padding: 10px 15px;
        margin: 0 auto 10px auto;
        text-align: center;
        font-size: 18px;
        
        color: black;
        background-color: rgba(255,255,255,0.2);
        
        transition-duration: 0.25s;
        font-weight: 300;
	}
	/* 마우스를 올리면? */
	#userId:hover {
		background-color: rgba(255,255,255,0.6);
	}
	#userPw:hover {
		background-color: rgba(255,255,255,0.6);
	}
	/* 포커스 되면? */
	#userId:focus {
		background-color: rgba(255,255,255,1);
		color: black;
		width: 300px;
	}
	#userPw:focus {
		background-color: white;
		opacity:1;
		color: black;
		width: 300px;
	}
	/* 로그인 버튼 설정 */
	#loginBtn {
		appearance: none;
        outline: 0;
        background-color: rgba(255,255,255,0.6);
        border: 0;
        padding: 10px 15px;
        color: rgb(60,60,60);
        border-radius: 3px;
        width: 150px;
        cursor: pointer;
        font-size: 18px;
        transition-duration: 0.25s;
	}
	/* 마우스를 올리면? */
	#loginBtn:hover {
		color: white;
		background-color: rgba(60,60,60,1);
	}
</style>
	
<section>
	<div class="container-fluid">
		<div class="row">
			<!-- 왼쪽 화면 영역 -->
			<div class="col-6" id="screenBG">
				<div id="screenOut">
					<!-- 화면 부분 -->
					<div id="screenTop" class="col-12">
						<video id="indexVideo" autoplay="autoplay" loop="loop" muted="muted" preload="preload">
							<source src="${path}/resources/video/index.mp4" type="video/mp4">
						</video>
						<div id="loginDiv" class="col-12">
							<p id="loginTitle">Hello</p>
							<form method="post" action="${path}/user/login.do">
								<input type="text" id="userId" name="userId" placeholder="USER ID">
								<input type="password" id="userPw" name="userPw" placeholder="USER PW">
								<button type="submit" id="loginBtn" name="loginBtn">Login</button>
							</form>
						</div>
					</div>
					<!-- 화면 밑 버튼 부분 -->
					<jsp:include page="/WEB-INF/views/common/leftButton.jsp"/>
				</div>
			</div>
			
			<!-- 오른쪽 메뉴 영역 -->
			<!-- session값에 따라 구현이 달라짐 -->
			<jsp:include page="/WEB-INF/views/common/rightMenu.jsp"/>
		</div>
	</div>
</section>