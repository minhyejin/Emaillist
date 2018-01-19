<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="com.javaex.vo.EmaillistVo" %>
 <%@ page import="com.javaex.dao.EmaillistDao" %>
 <% 
 	request.setCharacterEncoding("UTF-8");//한글 깨질때 사용//사용자가 요청한 정보 
 	
 	String lastName = request.getParameter("ln");//last name //값을 꺼내오는 
 	String firstName = request.getParameter("fn"); //first name
 	String email = request.getParameter("email");
 	
 	EmaillistVo vo = new EmaillistVo(1, lastName , firstName, email );
 	EmaillistDao dao = new EmaillistDao();
 	
 	dao.insert(vo);
 	
 	response.sendRedirect("list.jsp");//응답하는 정보 
 	
 	/* System.out.println(lastName);
 	System.out.println(firstName);
 	System.out.println(email);
  */
 %>
