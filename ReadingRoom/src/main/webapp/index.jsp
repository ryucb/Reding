<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- index는 session에 담지 않겠다. 를 선언함. -->
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
	/* index 배경화면 영상 */
	#indexVideo {
		overflow: auto;
		margin-left: 1%;
		margin-right: 1%;
		width: 98%;
		height: 100%;
	}
	/* 불투명한 div 설정 */
	#squareP {
		background-color: white;
		width: 98%;
		height: 10%;
		opacity: 0.7;
		
		text-align: center;
		font-family: 'Dancing Script', cursive;
		font-size: 30px;
		font-weight: bolder;
		
		position: relative;
		top: -55%;
		left: 1%;
	}
	#squareP:hover {
		cursor: auto;
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
						<p id="squareP">We Reading</p>
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