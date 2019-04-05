<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
							

<div class="main-content">
	<div class="container-fluid">
		<div class="custom-frame">
			<div class="row">
				<div class="col-xs-3">
					<h6>일정결과등록(??)</h6>
				</div>
				<div class="col-xs-3">
					<h6>(gt-kim/V.201903)</h6>
				</div>
				<div class="col-xs-6 row text-right">

					<a href='javascript:window.close();'>
						<button class="btn btn-danger">
							<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							닫기
						</button>
					</a>

				</div>
			</div>
		</div>

		<form class="" action="/action_page.php">
			<div class="custom-frame">


				<div class="row bg-light form-inline">


					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">계획 시작일</label> <input
							disabled id=devPlanStartDate class="input-small" value="${row.devPlanStartDate} " /> <label
							class="custom-inline-frame">계획 종료일</label> <input
							disabled id="devPlanEndDate" class="input-small" value="${row.devPlanEndDate }"/>
					</div>



					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">실적 시작일</label> <input
							id="devRealStartDate" class="input-small" /> <label
							class="custom-inline-frame">실적 종료일</label> <input
							id="devRealEndDate" class="input-small" />
					</div>
				</div>
			</div>

			<div class="custom-frame">
				<div class="row bg-light form-inline">

					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">테스트자</label> <input type="text"
							readonly class="form-control input-small" value="${member.name} ">
					</div>
					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">계획일</label> <input
							disabled id="testPlanStartDate" class="input-small" />
					</div>


					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">결과</label> <select
							class="form-control" id="progress" name="">
							<option>?</option>
							<option>PASS</option>
							<option>FAIL</option>
						</select>
					</div>

				</div>

			</div>
			<div class="custom-frame">
				<div class="row form-inline">
					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">결함 : </label> <label
							 class=" input-small custom-inline-frame">x</label>
						<label class="custom-inline-frame">건</label>
					</div>
					<div class="form-group custom-inline-frame">
						<button type="submit" class="btn btn-primary">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>저장
						</button>
					</div>
				</div>
			</div>

		</form>



		<div class="custom-frame">



			<div class="custom-file mb-3">
				<form action="#" method="post" enctype="multipart/form-data">
					<input type="file" class="custom-file-input" id="customFile"
						name="filename" multiple> <label class="custom-file-label"
						for="customFile">Choose fileasdf</label>
				</form>

				//순번 // 체크 // 파일명 // 파일크기(Byte) //
			</div>
		</div>
	</div>



</div>