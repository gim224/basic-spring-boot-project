<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<div class="main-content">
	<div class="container-fluid">
		<div class="custom-frame">
			<div class="row">
				<div class="col-xs-4">
					<h4>
						<b>일정결과등록(${role})</b>
					</h4>
				</div>
				<div class="col-xs-2">
					<h6>(gt-kim/V.201904)</h6>
				</div>
				<div class="col-xs-6 text-right">

					<a href='javascript:window.close();'>
						<button class="btn btn-danger">
							<span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
							닫기
						</button>
					</a>

				</div>
			</div>
		</div>

		<form class="" action="/action_page.php">

			<div class="custom-top-bottom-frame">

				<div class="bg-success form-inline custom-frame ">

					<div class="custom-form-frame">
						<b><span class="glyphicon glyphicon-hand-right"></span> 개발 실적</b>
					</div>
					<div class="custom-form-frame">
						<p>　프로그램명 : ${row.programName } ( ${row.programId } )</p>
					</div>
					<div class="custom-table-align">
						<div class="form-group custom-form-frame">
							<label class="">계획 시작일</label> <input disabled
								id=devPlanStartDate class="input-small"
								value="${row.devPlanStartDate} " />

						</div>
						<div class="form-group custom-form-frame">
							<label class="">계획 종료일</label> <input disabled
								id="devPlanEndDate" class="input-small"
								value="${row.devPlanEndDate }" />
						</div>

						<sec:authorize access="hasAnyRole('ROLE_DEV','ROLE_ADMIN')" var="isDev"></sec:authorize>

						<c:choose>
					<c:when test="${ isDev }">
						<div class="form-group custom-form-frame ">
							<label class="">실적 시작일</label> <input id="realDevStartDate"
								class="input-small" value="${row.realDevStartDate }"/>
						</div>
						<div class="form-group custom-form-frame">
							<label class="">실적 종료일</label> <input id="realDevEndDate"
								class="input-small" value="${row.realDevEndDate }"/>
						</div>
					</c:when>
					<c:otherwise>
						<div class="form-group custom-form-frame ">
							<label class="">실적 시작일</label> <input disabled id="realDevStartDate"
								class="input-small" value="${row.realDevStartDate }"/>
						</div>
						<div class="form-group custom-form-frame">
							<label class="">실적 종료일</label> <input disabled id="realDevEndDate"
								class="input-small" value="${row.realDevEndDate }"/>
						</div>
					</c:otherwise>
				</c:choose>
						
						

					</div>
				</div>
			</div>
			<div class="custom-top-bottom-frame">
				<div class="bg-warning form-inline custom-frame">


					<div class="custom-form-frame">
						<b><span class="glyphicon glyphicon-hand-right"></span> 단위테스트</b>
					</div>
					<div class="custom-form-frame">
						<p>　단위테스트명 : ()()</p>
					</div>
					<div class="custom-table-align">
						<div class="form-group custom-form-frame">
							<label class="">테스트자</label> <input type="text" readonly
								class="form-control input-small" value="${member.name} ">
						</div>
						<div class="form-group custom-form-frame">
							<label class="">계획일</label> <input disabled
								id="testPlanStartDate" class="input-small" value="" />
						</div>


						<div class="form-group custom-form-frame">
							<label class="">결과</label> <select class="form-control"
								id="result" name="">
								<option selected="selected"></option>								
								<option>PASS</option>
								<option>FAIL</option>
							</select>
						</div>
					</div>

				</div>
			</div>

			<div class="custom-frame">

				<div class="form-group custom-form-frame col-xs-3">
					<label class="custom-inline-frame">결함 : </label> <label
						class=" input-small custom-inline-frame">x</label> <label
						class="custom-inline-frame">건</label>
				</div>
				<div class="form-group custom-form-frame col-xs-9 text-right">
					<button type="submit" class="btn btn-primary">
						<span class="glyphicon glyphicon-floppy-saved" aria-hidden="true"></span>
						저장
					</button>
				</div>

			</div>


		</form>


		<div>※ 현재 열려있는 파일은 업로드가 안됩니다. 추가하려는 파일을 닫아주세요.</div>
		<div class="custom-frame">



	

			<div class="">
				<table class="table table-bordered">
					<tr class="active">
						<th class="col-xs-1 text-center">순번</th>
						<th class="col-xs-1 text-center">체크</th>
						<th class="col-xs-7 text-center">파일명</th>
						<th class="col-xs-3 text-center">파일크기(Byte)</th>
					</tr>
					<c:forEach items="">
					<tr>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<div class="text-right">
				<button class="btn btn-info">추가</button>
				<button class="btn btn-warning">삭제</button>
			</div>
		</div>

	</div>
</div>