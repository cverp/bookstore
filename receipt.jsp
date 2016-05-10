<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="common.jsp" %>
<%@ page import="java.util.*" %>

<html>
<head><title>TitleReceipt</title>
</head>
<%@ include file="banner.jsp" %>
<%
	if(cart.getLogined()==0) {
		%>
		<jsp:forward page="login.jsp" />
		<%
	}
%>

<%
    bookDB.buyBooks(cart);
    // Payment received -- invalidate the session
   session.invalidate();
%>
<html>
<head><title>TitleReceipt</title>
</head>

<h3><%=request.getParameter("cardname")%>：谢谢您光临新世纪网上书店。</h3><br>
<strong><a href="<%=request.getContextPath()%>/bookstore.jsp">继续购物</a>&nbsp;&nbsp;&nbsp;</strong>
 </body></html>
