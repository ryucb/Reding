<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!-- header 설정 -->
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="We Reading!" name="title" />
</jsp:include>

<style>
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
	/* 화면 밑 버튼 영역 */
	#screenBottom {
		border-radius: 25px;
		
		margin: 0 auto;
		padding-top: 2%;
		padding-bottom: 2%;
		
		height: 20%;
		width: 98%;
		text-align: center; /* 하위 요소를 가운데로! */
	}
	/* 화면 밑 버튼 설정 */
	.btnSetting {
		width: 30%;
		height: 100%;
	}
	
	/* ------------------------------------------------- */
	
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

<section>
	<div class="container-fluid">
		<div class="row">
			
			<!-- 왼쪽 화면 영역 -->
			<div class="col-6" id="screenBG">
				<div id="screenOut">
					<!-- 화면 부분 -->
					<div id="screenTop" class="col-12" style="color: white;">
						화면구성대기중^^
					</div>
					<!-- 화면 밑 버튼 부분 -->
					<div id="screenBottom" class="col-12">
						<button type="button" id="firstBtn" class="btn btn-info btnSetting">1</button>
						<button type="button" class="btn btn-light btnSetting">2</button>
					</div>
				</div>
			</div>
			
			<!-- 오른쪽 메뉴 영역 -->
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
		</div>
	</div>
</section>
<script>
	$(function () {
		/* 우측 메뉴 요소에 마우스가 진입했을 때 폰트 컬러를 바꾼다. */
		$(".cardRadius").mouseenter(function () {
			/* p 태그에 올라가도 같은 폰트 컬러를 유지하도록 한다. */
			$(this).children().css("color", "black");
		});
		/* 우측 메뉴 요소에 마우스가 빠져나갔을 때 폰트 컬러를 바꾼다. */
		$(".cardRadius").mouseout(function () {
			$(this).children().css("color", "white");
		});
		/* p 태그에 마우스가 진입했을 때 또한 마찬가지로 폰트 컬러를 위와 동일하게 바꾼다. */
		$(".card-text").mouseenter(function () {
			$(this).css("color", "black");
		});
	});
</script>