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
		border: 1px solid red;
		height: 600px;
		
	}
</style>

<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-6">
				<div class=""></div>
			</div>
			<div class="col-6">2</div>
		</div>
	</div>
</section>