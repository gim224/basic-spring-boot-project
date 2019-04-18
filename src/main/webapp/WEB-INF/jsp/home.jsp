<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>





<div class="main-content">
	<div class="container-fluid">

		<div class="custom-top-bottom-frame container-fluid">
			<div class="col-md-3">
				<h5>
					<b>프로그램목록관리</b>
				</h5>
			</div>
			<div class="col-md-3 custom-div-align">
				<h6>(gt-kim/V.201903)</h6>
			</div>
			<div class="col-md-6 row text-right">
				<a
					href="<c:url value="/resources/file/dev-plan-document-for-testing.xlsx"/>"
					class="btn btn-danger" role="button"
					title="이 탬플릿만을 활용하여 import 하십시오."><span
					class="glyphicon glyphicon-star" aria-hidden="true"></span> 개발계획서
					양식 <span class="glyphicon glyphicon-star" aria-hidden="true"></span></a>


				<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin" />

				<c:choose>
					<c:when test="${ !isAdmin }">
						<button class="btn btn-success" data-toggle="modal"
							data-target="#myModal" data-backdrop="static"
							data-keyboard="false" title="ADMIN계정에서만 허용" disabled>
							<span class="glyphicon glyphicon-floppy-open" aria-hidden="true"></span>
							import Excel
						</button>
					</c:when>
					<c:otherwise>
						<button class="btn btn-success" data-toggle="modal"
							data-target="#myModal" data-backdrop="static"
							data-keyboard="false" title="엑셀 등록하기">
							<span class="glyphicon glyphicon-floppy-open" aria-hidden="true"></span>
							import Excel
						</button>
					</c:otherwise>
				</c:choose>


				<a href="#" class="btn btn-warning" role="button" title="엑셀 내려받기"><span
					class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>
					export Excel </a> <a href="#" class="btn btn-info" role="button"><span
					class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
					도움말 </a>

			</div>
		</div>

		<div class="custom-frame container-fluid bg-warning">
			<form class="form-inline" id="search" method="get">
				<div class="form-group custom-form-frame">
					<label class="">부문명</label> <select class="form-control input-sm"
						id="partName" name="partName">
						<option selected="selected">전체</option>
						<option>LAM</option>
						<option>PTL</option>
						<option>DSS</option>
						<option>COM</option>
					</select>
				</div>

				<div class=" form-group custom-form-frame">
					<label class="">개발자</label> <input type="text"
						class="form-control input-sm" id="developerName"
						name="developerName">
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">프로그램ID</label> <input type="text"
						class="form-control input-sm" id="programId" name="programId">
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">프로그램명</label> <input type="text"
						class="form-control input-sm" id="programName" name="programName">
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">개발계획종료일</label> <input id="searchPlanStartDate"
						name="searchPlanStartDate" class="input-sm" width="180" /> ~ <input
						id="searchPlanEndDate" name="searchPlanEndDate" class="input-sm"
						width="180" />
				</div>
				<div class=" form-group custom-form-frame">
					<label class="">진행상태</label> <select class="input-sm" id="progress"
						name="progress">
						<option selected="selected">...</option>
						<option>개발자 완료</option>
						<option>PL 완료</option>
						<option>QA 완료</option>
						<option>감리 완료</option>
						<option>제3자 완료</option>
						<option>고객 완료</option>
					</select>
				</div>



				<div class=" form-group custom-form-frame">
					<button type="submit" id="submit" class="btn btn-primary btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						조회
					</button>
				</div>
				
				

				<button type="button" class="btn btn-default btn-sm" data-toggle="collapse"
					data-target="#demo"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 조회조건 더보기</button>
				<div id="demo" class="collapse">
				<div class=" form-group custom-form-frame">
					<label class="">난이도</label> <input type="text"
						class="form-control input-sm" id="levelOfDifficulty" name="levelOfDifficulty">
				</div>
				</div>
			</form>
		</div>


		<div class="custom-top-bottom-frame container-fluid ">
			<div id="myGrid" class="ag-theme-balham basic-height"></div>
		</div>


	</div>
</div>



<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">개발계획서 양식 업로드</h4>
			</div>
			<form method="POST" enctype="multipart/form-data"
				action="<c:url value="/importFile"/>">
				<div class="modal-body">
					<div>
						<dl>
							<dd>
								<input type="file" name="file" />
							<dd>
						</dl>
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-info" value="Upload" />
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</form>
		</div>
	</div>
</div>
