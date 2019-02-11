<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>개발을 하자</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="resources/css/gt.css"/>" rel="stylesheet"
	type="text/css">




<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- 부트스트랩 -->
<!-- <link href="/webjars/bootstrap/4.1.3/dist/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet"> -->



</head>

<body>

	<div class="container-fluid">
		<div class="custom-frame">
			<div class="row">
				<div class="col-md-3">
					<h2>일정결과등록(??)</h2>
				</div>
				<div class="col-md-3">(gt-kim/V.201809)</div>
				<div class="col-md-6 row">
					<form class="form-inline custom-inline-frame"
						action="/action_page.php">
						<button type="submit" class="btn btn-danger">
							<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							닫기
						</button>
					</form>

				</div>
			</div>
		</div>







		<div class="custom-frame">



			<div class="custom-file mb-3">
				<form action="<c:url value="/upload"/>" method="post"
					enctype="multipart/form-data">
					<input type="file" class="custom-file-input" id="customFile"
						name="uploadfiles" multiple> <label class="custom-file-label"
						for="customFile">Choose file</label>
						
						<button type="submit" class="btn btn-info"> upload..
						</button>
				</form>

				//순번 // 체크 // 파일명 // 파일크기(Byte) //
			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


	<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js"
		type="text/javascript"></script>



	<script
		src="<c:url value="/resources/js/gt.js"/>"></script>




</body>
</html>