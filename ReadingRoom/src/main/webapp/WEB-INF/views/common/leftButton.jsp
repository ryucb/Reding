<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	
	<style>
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
	</style>
	
<!-- 좌측 화면 밑 버튼 영역 -->
<div id="screenBottom" class="col-12">
	<button type="button" id="firstBtn" class="btn btn-info btnSetting">1</button>
	<button type="button" class="btn btn-light btnSetting">2</button>
</div>