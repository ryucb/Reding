<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>We Reading!</title>

<!-- 부트스트랩4 적용 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!-- 파비콘 생성 -->
<link rel="shortcut icon" type="image/x-icon" href="${path}/resources/img/reading.png"/>
<!-- 폰트 적용 두한 + 노트산스-->
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
	/* 전체에 폰트 적용 */
    /* 전체 margin, padding 조절 */
    *{
        font-family: 'Noto Sans KR', sans-serif;
        margin: 0;
        padding: 0;
    }
    
    /* ----- */
    
    /* 영역 설정 */
    header {
    	height: 100px;
    	width: 100%;
    	border-bottom: 2px solid rgb(60,60,60);
    }
    /* 부트스트랩 div 영역 설정 */
    #headerDivRow {
    	height: 100px;
    }
    /* header 내 div 첫번째줄 영역 설정 */
    .col-2, .col-4 {
    	float: left;
    	height: 100px;
    }
    /* readIconDiv 영역 설정 */
    #readIconDiv {
    	padding-left: 3%;
    }
    /* readIconDiv 영역에 마우스를 올리면? */
    #readIconDiv:hover {
    	cursor: pointer;
    }
    /* 아이콘 설정 */
    #readingIcon {
    	margin-top: 10px;
    	width: 70px;
    	height: 70px;	
    }
    /* We Reading! 타이틀 설정 */
    .spanTitle {
    	font-weight: bolder;
    	font-family: 'Do Hyeon', sans-serif;
    	font-size: 20px;
    }
    
    /* ----- */
    
    /* 스위치 영역 */
    #projectInfoBtn {
    	width: 200px;
    	height: 50px;
    	margin: 10% auto;
    }
</style>
</head>
<body>
	<header>
		<div class="container-fluid">
			<div id="headerDivRow" class="row">
				<div id="header_div01" class="col-10">
					<div class="col-2"></div>
					<div class="col-2"></div>
					<div class="col-2"></div>
					<div class="col-4" id="readIconDiv" onclick="location.replace(${pageContext.request.contextPath });">
						<span class="spanTitle" id="we">We</span>
						<img id="readingIcon" onclick="location.replace('${path}');" src="${path }/resources/img/reading.png">
						<span class="spanTitle">Reading!</span>
					</div>			
				</div>
				<!-- 버튼을 누르면 나타나는 모달 영역 -->
				<div class="col-2">
					<!-- 버튼 -->
					<button id="projectInfoBtn" type="button" class="btn btn-dark" data-toggle="modal" data-target="#projectInfo">프로젝트 소개</button>
					<!-- 모달 -->
					<div id="projectInfo" class="modal">
						<div class="modal-dialog">
							<div class="modal-content">
								<!-- 헤더 -->
								<div class="modal-header">
									<h4 class="modal-title">프로젝트 소개</h4>
								</div>
								<!-- 바디 -->
								<div class="modal-body">
									We Reading!은 '요즘의 많은 개발이 이루어지는 무인주문시스템(키오스크)을
									우리가 배운 언어로 구현한다면 어떨까?'<br>
									라는 생각에서 비롯하여 만들어지게 된 프로젝트입니다. <br><br>
									
									웹으로 키오스크 환경을 구현함으로써 <br>
									UI/UX를 이해하려고 노력하였습니다.<br>
									- 아이디어 제공 및 기획 : 유슬기<br>
									- Git 관리 : 유축복<br>
									- DB 구현 : 이성연<br>
								</div>
								<!-- 푸터 -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
<script>
	
</script>