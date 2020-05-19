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
	<form action="memberChk.jsp" method="post">
		<h1>회원 가입</h1>
		아 이 디 : <input type="text" name="id" placeholder="아 이 디"><br>
		비밀번호 : <input type="text" name="pwd" placeholder="비밀번호"><br>
		이   름 : <input type="text" name="name" placeholder="이   름"><br>
		부   서 : <input type="text" name="department" placeholder="부   서"><br>
		직   급 : <input type="text" name="position" placeholder="직   급"><br>
		<input type="submit" value="가입">&nbsp;&nbsp;
		<input type="button" value="취소" onclick="location.href='index.jsp';"> 		
	</form>
</body>
</html>