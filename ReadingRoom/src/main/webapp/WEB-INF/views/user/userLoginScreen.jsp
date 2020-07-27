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