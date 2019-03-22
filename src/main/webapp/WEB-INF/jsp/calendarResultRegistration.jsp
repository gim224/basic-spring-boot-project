<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

		<form class="" action="/action_page.php">
			<div class="custom-frame">


				<div class="row bg-light form-inline">


					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">계획 시작일</label> <input
							id=devPlanStartDate class="input-small" /> <label
							class="custom-inline-frame">계획 종료일</label> <input
							id="devPlanEndDate" class="input-small" />
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
						<label class="custom-inline-frame">담당자</label> <input type="text"
							class="form-control input-small">
					</div>
					<div class="form-group custom-inline-frame">
						<label class="custom-inline-frame">계획일</label> <input
							id="testPlanStartDate" class="input-small" />
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
						<label class="custom-inline-frame">결함 : </label> <input
							type="text" class="form-control input-small custom-inline-frame">
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



