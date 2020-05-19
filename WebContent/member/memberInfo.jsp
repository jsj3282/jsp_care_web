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
	<h1 align="center">사원 목록</h1>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<c:set var="members" value="${dao.memberView() }"/>
		<table border="1" align="center">
		<tr>
			<th>이름</th><th>부서</th><th>직급</th>
		</tr>
		<c:choose>
			<c:when test="${members.size() != 0 }">
				<c:forEach var="mem" items="${members }">
				<tr>
				<td><a href="userInfo.jsp?id=${mem.getId()}">${mem.getName() }</a></td>
				<td>${mem.getDepartment() }</td>
				<td>${mem.getPosition() }</td>
				</c:forEach>
			</c:when>
		</c:choose>
		</table>
	<footer>
		<%@ include file="../default/footer.jsp" %>
	</footer>	
</body>
</html>