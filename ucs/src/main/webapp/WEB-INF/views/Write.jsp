<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<!-- 내용 시작 -->
	<div class="page-header">
		<h1>
			답변형 게시판 프로젝트<small>작성 페이지</small>
		</h1>
	</div>
	<div class="row">
		<form class="form-horizontal" method="post"
			action="<c:url value='/ReplyBBS/BBS/Write.bbs'/>">

			<div class="form-group">
				<label for="title" class="col-sm-2  control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="제목을 입력하세요">
				</div>
			</div>

			<div class="form-group">
				<label for="content" class="col-sm-2  control-label">내용</label>
				<div class="col-sm-5">
					<textarea rows="10" placeholder="비밀번호를 입력하세요" class="form-control"
						id="content" name="content"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-danger">등록</button>
				</div>
			</div>
		</form>

	</div>



</div>
<!-- 내용 끝 -->
