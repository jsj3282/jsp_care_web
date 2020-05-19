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
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<c:set var="i" value="${dao.memberChk(param.id, param.pwd, param.name, param.department, param.position) }"/>
	<c:choose>
		<c:when test="${i == 1 }">
			<script>
				alert("회원가입 성공!!")
				location.href = "index.jsp"
			</script>
		<c:set var="mySession" value="${param.id }" scope="session"/>
		</c:when>
		<c:when test="${i == 0 }">
			<script>
				alert("이미 동일한 아이디가 존재합니다!!")
				location.href="member.jsp"
			</script>
		</c:when>
		<c:when test="${i == -1 }">
			<script>
				alter("sql 오류 발생")
				location.href="member.jsp"
			</script>
		</c:when>
	</c:choose>
</body>
</html>