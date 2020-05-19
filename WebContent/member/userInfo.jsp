<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="utf-8"/>
	<header>
		<%@include file="../default/header.jsp" %>
	</header>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	 <jsp:useBean id="dto" class="members.MemberDTO"/>
   <jsp:setProperty property="*" name="dto"/>
   <c:set var="member" value='${dao.userInfo(dto.getId()) }' scope="page"/>
   <c:choose>
   		<c:when test="${dto.getId() == sessionScope.mySession}">
   			<h1>본인 정보</h1>
   			<h3>아이디 : ${member.id }</h3>                                                
   			<h3>비밀번호 : ${member.pwd }</h3>
  			<h3>이     름 : ${member.name }</h3>
   			<h3>부     서 : ${member.department }</h3>
   			<h3>직     급 : ${member.position }</h3>
   		</c:when>
   		<c:otherwise>
   			<h1>사원 정보</h1>
   			<h3>이     름 : ${member.name }</h3>
   			<h3>부     서 : ${member.department }</h3>
   			<h3>직     급 : ${member.position }</h3>
   		</c:otherwise>
	</c:choose>
	<footer>
		<%@include file="../default/footer.jsp" %>
	</footer>
</body>
</html>