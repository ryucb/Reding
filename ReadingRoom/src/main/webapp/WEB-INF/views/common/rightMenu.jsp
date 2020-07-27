<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	
<style>
	/* 우측 영역 설정 */
	.card { /* 회색 선 투명하게 처리해버리기 */
		border: 1px solid rgb(0,0,0,0);
		background-color: rgb(60,60,60);
	}
	.card-deck {
		margin-top: 2%;
		margin-bottom: 2%;	
	}
	.cardRadius {
		border-radius: 25px;
	}
	.card-text {
		color: white;
		font-weight: bolder;
		font-size: 2em;
		letter-spacing: 2px;
		margin: 25% auto;
	}
	/* 아이콘 설정 */
	#login_icon { /* 사용자 로그인 */
		width: 15%;
		position: relative;
		right: -30%;
	}
	/* 우측 메뉴버튼 설정 -사용자 로그인- */
	#userLoginCard {
		height: 150%;
		background-color: rgba(50,125,50,1);
	}
	#userLoginCard:hover { /* 사용자 로그인에 마우스를 올렸을 때 */
		cursor: pointer;
		transition-property: background-color;
        transition-duration: 0.5s;
        transition-timing-function: ease;
        background-color: rgb(100,184,100);
	}
	/* 우측 메뉴버튼 설정 -사용자 회원가입- */
	#userJoinCard {
		background-color: #ff6600;
	}
	#userJoinCard:hover { /* 사용자 회원가입에 마우스를 올렸을 때 */
		cursor: pointer;
		transition-property: background-color;
        transition-duration: 0.5s;
        transition-timing-function: ease;
        background-color: #ff9a57;
	}
	/* 우측 메뉴버튼 설정 -사업자 로그인- */
	#ceoLoginCard {
		background-color: #0066ff;
	}
	#ceoLoginCard:hover { /* 사업자 로그인에 마우스를 올렸을 때 */
		cursor: pointer;
		transition-property: background-color;
        transition-duration: 0.5s;
        transition-timing-function: ease;
        background-color: #5297ff;
	}
	#ceoJoinCard {
		background-color: #9900cc;
	}
	#ceoJoinCard:hover { /* 사업자 로그인에 마우스를 올렸을 때 */
		cursor: pointer;
		transition-property: background-color;
        transition-duration: 0.5s;
        transition-timing-function: ease;
        background-color: #ae5cc9;
	}
	/* 메뉴버튼 영역에 마우스를 올렸을 때 */
	.cardRadius:hover {
		cursor: pointer;
		box-shadow: 3px 3px 5px 3px gray;
	}
</style>
	
<!-- 오른쪽 메뉴 영역 -->
<!-- session값에 따라 구현이 달라짐 -->
<div class="col-6">
	<div class="card-deck">
		<!-- 1번째 메뉴 -->
	<div class="card">
		<div id="userLoginCard" class="card-body text-center cardRadius">
			<p class="card-text">USER LOG-IN</p>
			<img id="login_icon" src="${pageContext.request.contextPath}/resources/img/loginWhite.png">
		</div>
	</div>
	<!-- 2번째 메뉴 -->
	<div class="card">
		<div id="userJoinCard" class="card-body text-center cardRadius">
			<p class="card-text">USER JOIN</p>
			<img id="login_icon" src="${pageContext.request.contextPath}/resources/img/plus.png">
		</div>
	</div>
	<!-- 한 줄 띄우기 -->
	<div style="width:100%; height:30px;"></div>
	<!-- 3번째 메뉴 -->
	<div class="card">
		<div id="ceoLoginCard" class="card-body text-center cardRadius">
			<p class="card-text">CEO LOG-IN</p>
			<img id="login_icon" src="${pageContext.request.contextPath}/resources/img/loginWhite.png">
		</div>
	</div>
	<!-- 4번째 메뉴 -->
	<div class="card">
		<div id="ceoJoinCard" class="card-body text-center cardRadius">
			<p class="card-text">CEO JOIN</p>
			<img id="login_icon" src="${pageContext.request.contextPath}/resources/img/plus.png">
			</div>
		</div>
	</div>
</div>