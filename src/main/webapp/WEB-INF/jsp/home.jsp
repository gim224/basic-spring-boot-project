<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="main-content">
	<div class="container-fluid">

		<div class="custom-top-bottom-frame container-fluid">
			<div class="col-md-3">
				<h3>프로그램목록관리(??)</h3>
			</div>
			<div class="col-md-3">
				<p>(gt-kim/V.201809)</p>
			</div>
			<div class="col-md-6 row text-right">
				<a href="#" class="btn btn-success" role="button"><span
					class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>
					엑셀 </a> <a href="#" class="btn btn-warning" role="button"><span
					class="glyphicon glyphicon-star" aria-hidden="true"></span> 즐겨찾기추가
				</a> <a href="#" class="btn btn-info" role="button"><span
					class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
					도움말 </a> <a href="#" class="btn btn-danger" role="button"><span
					class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
					닫기 </a>
			</div>
		</div>



		<div class="custom-frame container-fluid bg-warning">
			<form class="form-inline" action="/action_page.php">
				<div class="form-group custom-form-frame">
					<label class="">업무대분류</label> <select class="form-control input-sm"
						id="part" name="">
						<option>{전체}</option>
						<option>{LAM}</option>
						<option>{PTL}</option>
						<option>{DSS}</option>
						<option>{COM}</option>
					</select>
				</div>

				<div class=" form-group custom-form-frame">
					<label class="">개발자</label> <input type="text"
						class="form-control input-sm">
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">프로그램 ID</label> <input type="text"
						class="form-control input-sm">
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">프로그램 명</label> <input type="text"
						class="form-control input-sm">
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">개발계획종료일</label> <input id="devPlanStartDate"
						class="input-sm" width="180" /> ~ <input id="devPlanEndDate"
						class="input-sm" width="180" />
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">진행상태</label> <select class="input-sm" id="progress"
						name="">
						<option>{전체}</option>
						<option>{2}</option>
						<option>{3}</option>
						<option>{4}</option>
					</select>
				</div>

				<div class=" form-group custom-form-frame">
					<button type="submit" class="btn btn-primary btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						조회
					</button>
				</div>
			</form>
		</div>

		<div class="custom-top-bottom-frame container-fluid">
			<div class="table-responsive">
				<table id="gt-table" class="table table-bordered table-hover">
					<thead class="bg-info">
						<tr class="">
							<th rowspan="2" class="custom-table-align">순번</th>
							<th rowspan="2" class="custom-table-align">화면ID</th>
							<th rowspan="2" class="custom-table-align">화면명</th>
							<th rowspan="2" class="custom-table-align">부문명</th>
							<th rowspan="2" class="custom-table-align">업무명</th>
							<th rowspan="2" class="custom-table-align">단위업무명</th>
							<th rowspan="2" class="custom-table-align">프로그램ID</th>
							<th rowspan="2" class="custom-table-align">프로그램명</th>
							<th rowspan="2" class="custom-table-align">소스파일명</th>
							<th rowspan="2" class="custom-table-align">확장자</th>
							<th rowspan="2" class="custom-table-align">유형</th>
							<th rowspan="2" class="custom-table-align">난이도</th>
							<th rowspan="2" class="custom-table-align">개발자</th>
							<th rowspan="2" class="custom-table-align">변경구분</th>
							<th rowspan="2" class="custom-table-align">변경일자</th>
							<th rowspan="2" class="custom-table-align">배치ID</th>
							<th rowspan="2" class="custom-table-align">인터페이스ID</th>
							<th rowspan="2" class="custom-table-align">비고</th>


							<th colspan="2" class="custom-table-align">개발계획</th>
							<th colspan="2" class="custom-table-align">개발실적</th>

							<th colspan="4" class="custom-table-align">(P??L) 단위테스트</th>


						</tr>
						<tr>
							<th class="custom-table-align">시작일</th>
							<th class="custom-table-align">종료일</th>
							<th class="custom-table-align">시작일</th>
							<th class="custom-table-align">종료일</th>
							<th class="custom-table-align">담당자</th>
							<th class="custom-table-align">계획일</th>
							<th class="custom-table-align">실적일</th>
							<th class="custom-table-align">결과</th>
						</tr>

					</thead>
					<tbody>

						<c:forEach var="i" items="${rows}" varStatus="status">
							<tr class="custom-table-align">
								<td>${status.count}</td>
								<td>${i.uiId}</td>
								<td>${i.uiName}</td>
								<td>부문명}</td>
								<td>업무명}</td>
								<td>단위업무명}</td>
								<td>${i.programId}</td>
								<td>${i.programName}</td>
								<td>${i.sourceFileName}</td>
								<td>${i.extension}</td>
								<td>${i.type}</td>
								<td>${i.levelOfDifficulty}</td>
								<td>${i.developerName}</td>
								<td>변경구분}</td>
								<td>변경일자}</td>
								<td>${i.batchId}</td>
								<td>${i.interfaceId}</td>
								<td>${i.note}</td>
								<td>${i.devPlanStartDate}</td>
								<td>${i.devPlanEndDate}</td>
								<%-- 								<td>${i.devRealStart}2019.02.08</td> --%>
								<%-- 								<td>${i.devRealEnd}2019.07.31</td> --%>
								<!-- 								<td>@{i}김기태</td> -->
								<!-- 								<td>@{i}2019.08.15</td> -->
								<!-- 								<td>@{i}2019.08.16</td> -->
								<!-- 								<td>@{i}PASS</td> -->
							</tr>

						</c:forEach>
					</tbody>

				</table>
			</div>


			<div class="col-md-12" id="count">[건수: ${count}건]</div>
			<!-- 			<ul class="pagination pagination"> -->
			<!-- 				<li><a href="#">1</a></li> -->
			<!-- 				<li><a href="#">2</a></li> -->
			<!-- 				<li><a href="#">3</a></li> -->
			<!-- 				<li><a href="#">4</a></li> -->
			<!-- 				<li><a href="#">5</a></li> -->
			<!-- 			</ul> -->
			<div class="col-lg-12" id="ex1_Result1"></div>
			<div class="col-lg-12" id="ex1_Result2"></div>
		</div>
	</div>


</div>