<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.GuestBookVo" %> 
<%@ page import = "com.javaex.dao.GuestBookDao" %> 
<%@ page import="java.util.*"%>
<%
	//파라미터의 값 꺼내오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	
	//vo 묶기
	GuestBookVo guestbookVo = new GuestBookVo();
	guestbookVo.setName(name);
	guestbookVo.setPassword(password);
	guestbookVo.setContent(content);
	//System.out.println(name +","+hp +","+company);

	//System.out.println(personVo);
	//Dao를 통해서 데이터 저장
	GuestBookDao guestbookDao = new GuestBookDao();
	int count = guestbookDao.guestbookInsert(guestbookVo);
	
	
	//List<PersonVo> personList = personDao.personSelect("");
	//System.out.println(personList);
	
	//리스트뿌리기 리다이렉트
	response.sendRedirect("./addlist.jsp");
	
%> 
