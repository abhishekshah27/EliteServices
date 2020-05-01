<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%
		Cookie[] cks=request.getCookies();
		for(Cookie ck:cks)
		{
			if(ck.getName().equals("abc"))
			{
				ck.setMaxAge(0);
				break;
			}
		}
		session.removeAttribute("abc");
		session.invalidate();
		response.sendRedirect("index.jsp");
	
%>
</body>
</html>