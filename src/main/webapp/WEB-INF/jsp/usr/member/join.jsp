<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<%@ include file="/WEB-INF/jsp/common/header.jsp"%>

<script>
	let canUsedEmail = null;

	const joinForm = function(form) {
		form.email.value = form.email.value.trim();
		form.loginPw.value = form.loginPw.value.trim();
		form.pwChk.value = form.pwChk.value.trim();
		form.name.value = form.name.value.trim();
		
		if (form.email.value.length == 0) {
			alert('아이디를 입력해주세요');
			form.email.focus();
			return;
		}
		
		if (form.loginPw.value.length == 0) {
			alert('비밀번호를 입력해주세요');
			form.loginPw.focus();
			return;
		}
		
		if (form.name.value.length == 0) {
			alert('이름을 입력해주세요');
			form.name.focus();
			return;
		}
		
		if (form.loginPw.value != form.pwChk.value) {
			alert('비밀번호가 일치하지 않습니다');
			form.loginPw.value = '';
			form.pwChk.value = '';
			form.loginPw.focus();
			return;
		}
		
		form.submit();
	}

</script>

<section class="mt-8">
	<div class="container mx-auto">
		<form action="doJoin" method="post" onsubmit="joinForm(this); return false;">
			<div class="table-box">
				<table>
					<tr>
						<th>성명</th>
						<td>
							<label class="input input-bordered flex items-center gap-2">
							  <input type="text" name="name" placeholder="이름을 입력해주세요" />
							</label>
						</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>
							<label class="input input-bordered flex items-center gap-2">
							  <input type="text" name="email" placeholder="이메일을 입력해주세요" onblur="emailDupChk(this);" />
							  <div id="emailDupChkMsg" class="mt-2 text-sm h-5 w-96"></div>
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
					<th>비밀번호 확인</th>
						<td>
							<label class="input input-bordered flex items-center gap-2">
							  <input type="text" name="pwChk" placeholder="비밀번호를 입력해주세요" />
							</label>
						</td>
					</tr>
					<tr>
						<td colspan="2"><button class="btn btn-outline btn-primary">회원가입</button></td>
					</tr>
				</table>
			</div>
		</form>

	</div>
</section>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>