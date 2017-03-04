<%@ page import="spms.vo.Member" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/test.css">
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	<h1> 회원목록 </h1>
	<p><a href='add'>신규회원</a>
	<%
		ArrayList<Member> members = (ArrayList<Member>)request.getAttribute("members");
		for(Member member : members) {  // members배열에 들어있는 값들을 하나씩 member에 대입한
	%>
	<%=member.getNo()%>,	
	<a href='update?no=<%=member.getNo()%>'><%=member.getName()%></a>,
	<%=member.getEmail()%>,
	<%=member.getCreatedDate()%>
	<a href='delete?no=<%=member.getNo()%>'>[삭제]</a><br>
	<%} %>
	
	<jsp:include page="/Tail.jsp"/>
	
</body>
</html>

