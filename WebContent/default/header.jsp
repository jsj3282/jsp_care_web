<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<fmt:requestEncoding value="utf-8"/>
		<h1 style="text-align:center; color:burlywood; font-size:60px; font-family:Gabriola;">CARE &nbsp; WEB</h1>
		<div align="center">
		<c:choose>
			<c:when test="${sessionScope.mySession != null}">
				<hr>
				<a href="../member/index.jsp">HOME</a>
				&nbsp;&nbsp;&nbsp;
				<a href="../member/memberInfo.jsp">사원 정보</a>
				&nbsp;&nbsp;&nbsp;
				<a href="../member/logout.jsp">로그아웃</a>
				<hr>
			</c:when>
			<c:when test="${sessionScope.mySession == null }">
			<hr>
			<a href="../member/index.jsp">HOME</a>
			&nbsp;&nbsp;&nbsp;
			<a href="../member/login.jsp">로그인</a>
			<hr>
			</c:when>
		</c:choose>
		</div>		
</body>
</html>