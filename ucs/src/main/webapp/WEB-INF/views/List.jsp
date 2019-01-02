<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 내용 시작 -->
<div class="container">
	<div class="page-header">
		<h1>
			답변형 게시판 프로젝트<small>목록 페이지</small>
		</h1>
	</div>
	<div class="row" style="margin-bottom: 10px">
		<div class="text-right">
			<a href="<c:url value='/ReplyBBS/BBS/Write.bbs'/>"
				class="btn btn-success">등록</a>
		</div>
	</div>
	<div class="row">
		<!-- 테이블전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
		<div>
			<table class="table table-hover table-bordered text-center">
				<tr>
					<!-- 각 컬럼의 폭은 <td>계열에 class="col-*-*"추가 -->
					<th class="col-md-1 text-center">번호</th>
					<th class="text-center">제목</th>
					<th class="col-md-1 text-center">작성자</th>
					<th class="col-md-1 text-center">작성일</th>
				</tr>
				<c:if test="${empty requestScope.list }" var="isEmpty">
					<tr>
						<td colspan="4">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="record" items="${list}" varStatus="loop">
						<tr>
							<td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
							<td class="text-left"><c:forEach begin="1"
									end="${record.depth}" varStatus="loopvar">
		    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    				<c:if test="${loopvar.last}">
		    					└☞
		    				</c:if>
								</c:forEach> <a
								href="<c:url value='/ReplyBBS/BBS/View.bbs?no=${record.no}'/>">${record.title }</a>
							</td>
							<td>${record.name}</td>
							<td>${record.postdate}</td>
						</tr>
					</c:forEach>
				</c:if>

			</table>
		</div>

	</div>
</div>
<!-- 아래는 페이징 -->
<div class="row">
	<div>${pagingString}</div>
</div>
<!-- 검색용 UI -->
<div class="row">
	<div class="text-center">
		<form class="form-inline" method="post"
			action="<c:url value='/ReplyBBS/BBS/List.bbs'/>">
			<div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" name="searchWord" class="form-control" />
			</div>
			<button type="submit" class="btn btn-primary">검색</button>

		</form>
	</div>
</div>

</div>
<!-- 내용 끝 -->
