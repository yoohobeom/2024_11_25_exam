<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ include file="/WEB-INF/jsp/common/header.jsp" %>	

<section class="mt-8">
	<div class="container mx-auto">
		<div class="w-9/12 mx-auto">
			<table class="table table-lg">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="article" items="${articles }">
						<tr class="hover">
							<td>${article.getId() }</td>
							<td class="link link-hover"><a href="detail?id=${article.getId() }">${article.getTitle() }</a></td>
							<td>${article.getEmail() }</td>
							<td>${article.getRegDate() }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</section>
<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>