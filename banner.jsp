<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="cart" scope="session" class="mypack.ShoppingCart"/>

<body>
<img src="logo.bmp" >
<%
	if(cart.getLogined()==0) {
		%>
		<div align="right"> <a href="login.jsp">登录</a> <a href="regist.jsp">注册</a></div>
		<% 
	} else { %>
		<div align='right'><%= cart.getUsername() %> </div>
		<%
	}
%>
<hr>

