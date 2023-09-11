<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestBookDao" %>    
    
<%

		
	String id = request.getParameter("id");
	int gbId = Integer.parseInt(id);
	
	System.out.println(gbId);
	
	GuestBookDao guestbookDao = new GuestBookDao();
	int count = guestbookDao.guestbookDelete(gbId);
	System.out.println(count);
	
	
	//리스트 보여주기 -->리스트로 리다이렉트
	response.sendRedirect("./addlist.jsp");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>