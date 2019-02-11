<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="main-content">
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-3">
				<h2>프로그램목록관리(??)</h2>
			</div>
			<div class="col-md-3">
				<p>(gt-kim/V.201809)</p>
			</div>
			<div class="col-md-6 row text-right">
				<a href="#" class="btn btn-success" role="button"><span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> 엑셀 </a>
				<a href="#" class="btn btn-warning" role="button"><span class="glyphicon glyphicon-star" aria-hidden="true"></span> 즐겨찾기추가 </a> 
				<a href="#" class="btn btn-info" role="button"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> 도움말 </a>
				<a href="#" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span> 닫기 </a>
			</div>
		</div>



		<div class="row bg-success">
			<form class="form-inline" action="/action_page.php">
				<div class="form-group">
					<label class="">업무대분류</label> <select class="form-control"
						id="part" name="">
						<option>{전체}</option>
						<option>{2}</option>
						<option>{3}</option>
						<option>{4}</option>
					</select>
				</div>

				<div class="form-group">
					<label class="">개발자</label> <input type="text"
						class="form-control input-mini">
				</div>
				<div class="form-group">
					<label class="">프로그램 ID</label> <input type="text"
						class="form-control input-small">
				</div>
				<div class="form-group">
					<label class="">프로그램 명</label> <input type="text"
						class="form-control input-small">
				</div>
				<div class="form-group">
					<label class=" ">개발계획종료일</label> <input id="devPlanStartDate"
						class="input-small" value="2018/01/01" /> ~ <input
						id="devPlanEndDate" class="input-small" />
				</div>
				<div class="form-group  ">
					<label class=" ">진행상태</label> <select class="form-control"
						id="progress" name="">
						<option>{전체}</option>
						<option>{2}</option>
						<option>{3}</option>
						<option>{4}</option>
					</select>
				</div>

				<div class="form-group  ">
					<button type="submit" class="btn btn-primary">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span> 조회
					</button>
				</div>
			</form>
		</div>


		<div class="table-responsive">
			<table id="gt-table" class="table table-bordered table-hover">
				<thead class="text-center">
					<tr>
						<th rowspan="2" class="text-center align-middle">순번</th>
						<th rowspan="2" class="text-center align-middle">업무대분류</th>
						<th rowspan="2" class="text-center align-middle">업무중분류</th>
						<th rowspan="2" class="text-center align-middle">업무소분류</th>
						<th rowspan="2" class="text-center align-middle">단위테스트ID</th>
						<th rowspan="2" class="text-center align-middle">단위테스트명</th>
						<th rowspan="2" class="text-center align-middle">프로그램ID</th>
						<th rowspan="2" class="text-center align-middle">프로그램명</th>
						<th rowspan="2" class="text-center align-middle">유형</th>
						<th rowspan="2" class="text-center align-middle">요청구분</th>
						<th rowspan="2" class="text-center align-middle">변경구분</th>
						<th rowspan="2" class="text-center align-middle">개발자</th>
						<th rowspan="2" class="text-center align-middle">진행상태</th>
						<th colspan="2" class="text-center align-middle">개발계획</th>

						<th colspan="2" class="text-center align-middle">개발실적</th>

						<th colspan="4" class="text-center align-middle">(??) 단위테스트</th>


					</tr>
					<tr>
						<th class="text-center align-middle">시작일</th>
						<th class="text-center align-middle">종료일</th>
						<th class="text-center align-middle">시작일</th>
						<th class="text-center align-middle">종료일</th>
						<th class="text-center align-middle">담당자</th>
						<th class="text-center align-middle">계획일</th>
						<th class="text-center align-middle">실적일</th>
						<th class="text-center align-middle">결과</th>
					</tr>

				</thead>
				<tbody>

					<c:forEach var="i" items="${row}" varStatus="status">
						<tr>
							<td>${status.count}1</td>
							<td>${i.majorClass}DSS</td>
							<td>${i.mediumClass}RCM/LCC개발</td>
							<td>${i.minorClass}힘내자</td>
							<td>${i.unitTestId}UT-01-01-01</td>
							<td>${i.unitTestName}헬로~이것은매우긴 프로그램</td>
							<td>${i.programId}PG-01-01-01</td>
							<td>${i.programName}안뇽~</td>
							<td>${i.type}client</td>
							<td>${i.request}기능개선</td>
							<td>${i.change}신규</td>
							<td>${i.developer}김기태</td>
							<td>${i.progress}PL완료</td>
							<td>${i.devPlanStart}2019.02.08</td>
							<td>${i.devPlanEnd}2019.07.31</td>
							<td>${i.devRealStart}2019.02.08</td>
							<td>${i.devRealEnd}2019.07.31</td>
							<td>@{i}김기태</td>
							<td>@{i}2019.08.15</td>
							<td>@{i}2019.08.16</td>
							<td>@{i}PASS</td>
						</tr>

					</c:forEach>
				</tbody>

			</table>
		</div>
		<ul class="pagination pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
		<div class="col-lg-12" id="ex1_Result1"></div>
		<div class="col-lg-12" id="ex1_Result2"></div>
		<div class="col-md-12" id="count">[건수:{}건]</div>
	</div>


</div>