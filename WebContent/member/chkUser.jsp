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
	<c:set var = "i" value='${dao.chkuser(param.id, param.pwd) }'/>
	<c:choose>
		<c:when test="${i == 0 }">
			<script>
				alert("로그인 성공!!")
				location.href = "successLogin.jsp"
			</script>
			<c:set var="mySession" value="${param.id }" scope="session"/>
		</c:when>
		<c:when test="${i == 1 }">
			<script>
				alert("비밀번호가 일치하지 않습니다.")
				location.href="login.jsp"
			</script>
		</c:when>
		<c:when test="${i == 2 }">
			<script>
				alert("등록되지 않은 아이디 입니다.")
				location.href="login.jsp"
			</script>
		</c:when>
	</c:choose>
</body>
</html>