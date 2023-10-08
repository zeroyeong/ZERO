<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  알로항1222222222222222222222223 
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h1>이메일 인증</h1>

<h2>이메일 인증 상태  -> ${emailcheck}</h2>


<form action="/zero/email" method="post">
   <input type="text" name="email" placeholder="이메일">
   <input type="submit" value="인증코드보내기">
</form>

    <input type="text" name="verificationCode" placeholder="인증 코드">
    <input type="submit" value="확인">
    
</body>
</html>
