<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
	<title><tiles:getAsString name="title" /></title>
	
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css" />
	<!-- bootstrap 3.4.0 -->
	<link href="<c:url value="/resources/bootstrap-3.4.0-dist/css/bootstrap.min.css"/>" rel="stylesheet">
	<!-- gijgo 1.9.11 css-->	    
    <link href="<c:url value="resources/gijgo-combined-1.9.11/css/gijgo.min.css"/>" rel="stylesheet" type="text/css" />
	<!-- gt custom css -->
	<link href="<c:url value="resources/css/gt.css"/>" rel="stylesheet" type="text/css">

</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />

	<!-- 페이지를 빨리 읽어들이도록 문서 마지막에 자바스크립트를 배치한다. -->

	<!-- jquery 3.3.1 js -->
	<script src="<c:url value="/resources/jquery-3.3.1/jquery-3.3.1.min.js"/>"></script>
	<!-- bootstrap 3.4.0 js -->
	<script src="<c:url value="/resources/bootstrap-3.4.0-dist/js/bootstrap.min.js"/>"></script>
	<!-- gijgo 1.9.11 js -->
	<script src="<c:url value="/resources/gijgo-combined-1.9.11/js/gijgo.min.js"/>" type="text/javascript"></script>
	<!-- gt custom js -->
	<script src="<c:url value="/resources/js/gt.js"/>"></script>

</body>
</html>