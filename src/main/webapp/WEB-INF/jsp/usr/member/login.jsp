<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<c:set var="pageTitle" value="로그인" />

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<script>
	
	const loginForm = function(form) {
		form.email.value = form.email.value.trim();
		form.email.value = form.email.value.trim();
		
		if (form.email.value == 0) {
			alert('이메일을 입력해주세요');
			form.email.focus();
			return;
		}
		
		if (form.loginPw.value == 0) {
			alert('비밀번호를 입력해주세요');
			form.loginPW.focus();
			return;
		}
		
		form.submit();
	}
	
</script>

<section class="mt-8">
	<div class="container mx-auto">
		<form action="doLogin" method="post" onsubmit="loginForm(this); return false;">
			<div class="table-box">
				<table>
					<tr>
						<th>아이디</th>
						<td>
							<label class="input input-bordered flex items-center gap-2">
							  <input input type="text" name="email" placeholder="이메일을 입력해주세요" />
							</label>
						</td>
					</tr>
					<tr>
					<th>비밀번호</th>
						<td>
							<label class="input input-bordered flex items-center gap-2">
							  <input type="text" name="loginPw" placeholder="비밀번호를 입력해주세요" />
							</label>
						</td>
					</tr>
					
					<tr>
						<td colspan="2"><button class="btn btn-outline btn-primary">로그인</button></td>
					</tr>
				</table>
			</div>
		</form>

	</div>
</section>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>