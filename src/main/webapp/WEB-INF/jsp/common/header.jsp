<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 테일윈드CSS -->
<script src="https://cdn.tailwindcss.com"></script>
<!-- 데이지 UI -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css" rel="stylesheet" type="text/css" />
<!-- JQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
</head>
<body>

<div class="navbar bg-base-100">
	<div><a class="h-full px-3 flex items-center" href="/">로고</a></div>
	<ul >
		<li><a class="btn btn-ghost text-xl" href="/usr/article/list">게시글</a></li>
		<li><a class="btn btn-ghost text-xl" href="/usr/member/join">회원가입</a></li>
		<li><a class="btn btn-ghost text-xl" href="/usr/member/login">로그인</a></li>
	</ul>
</div>

</body>
</html>