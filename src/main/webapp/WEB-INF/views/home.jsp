
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>Home Page</h2>
		
		Welcome , ${user.firstName} 
	
	<br>
	
	<img src="${user.profilePicPath}"  height="200px" width="200px"/>
	
	<br>
	
<a href="logout">Logout</a>
</body>
</html>
