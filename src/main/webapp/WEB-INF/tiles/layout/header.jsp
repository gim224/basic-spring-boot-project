<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="container-fluid">
	<div class=" custom-top-bottom-frame container-fluid">
		<div class="header">
			<!-- Left-aligned -->
			<div class="media">
				<div class="media-left">
					<img src="<c:url value="/resources/img/img_avatar1.png"/>"
						class="media-object" style="width: 80px">
				</div>
				<div class="media-body">
					<h3 class="media-heading">Name : ${member.name }</h3>
					<h5>
						ID : ${member.username }
					</h5>
					<h5>
						${role }
					</h5>
				</div>
			</div>


			<sec:authorize access="isAuthenticated()">
				<a href="<c:url value="logout" />" class="btn btn-danger"
					role="button"> <span class="glyphicon glyphicon glyphicon-off"
					aria-hidden="true"></span> 로그아웃
				</a>
			</sec:authorize>
			<hr />
		</div>
	</div>
</div>