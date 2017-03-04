<%@page import="spms.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Member member = (Member)session.getAttribute("member");
%>
<div class=header>
<a style="color:white;" href ="/web05/member/list" >SPMS(Simple Project Management System)</a>
<span style="float:right;">
<%=member.getName()%>
<a style="color:white;" 
  href="<%=request.getContextPath()%>/auth/logout.jsp">로그아웃</a>
</span>
</div>