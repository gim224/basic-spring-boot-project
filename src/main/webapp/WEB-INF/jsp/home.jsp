<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>




<div class="main-content">
	<div class="container-fluid">

		<div class="custom-top-bottom-frame container-fluid">
			<div class="col-md-3">
				<h6>
					<b>프로그램목록관리(??)</b>
				</h6>
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
			<form class="form-inline" action="#">
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
				<h4 class="modal-title">File Upload</h4>
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
