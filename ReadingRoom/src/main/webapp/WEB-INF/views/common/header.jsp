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
    #changeMode {
    	width: 200px;
    	height: 50px;
    	margin: 10% auto;
    	border-radius: 25px;
    	text-align: center;
    	padding-top: 5%;
    	background-color: rgb(60,60,60);
    }
    #changeMode:hover{
    	cursor: pointer;
    	background-color: rgb(90,90,90);
    }
    /* 스위치 영역 내 폰트 설정 */
    #spanMode {
    	color: white;
    	cursor: default;
    }
    #spanMode:hover {
    	cursor: pointer;
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
				<div class="col-2">
					<div id="changeMode"><span id="spanMode">어두운 테마</span></div>
				</div>
			</div>
		</div>
	</header>
	
	<script>
		
	</script>