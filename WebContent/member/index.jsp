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
	<header>
 		<%@ include file="../default/header.jsp" %>
 	</header>
	<div align="center">
		<article>
			<br><br>
			<h3>안녕하세요! 웹을 만드는 회사입니다.<br>
			직원관리 홈페이지입니다.</h3>
		</article>
		<br><br>
	</div>
	<footer>
		<%@include file="../default/footer.jsp" %>
	</footer>
</body>
</html>