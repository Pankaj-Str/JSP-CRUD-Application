<%@page import="p4n.in.UserDao"%>
<jsp:useBean id="u" class="p4n.in.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>