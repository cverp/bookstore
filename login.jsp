<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="common.jsp" %>

<html>
<head><title>Login</title></head>
<jsp:useBean id="cart" scope="session" class="mypack.ShoppingCart"/>

<body>
<img src="logo.bmp" >
<hr>

<%
String username = (String)request.getParameter("username");
String password = (String)request.getParameter("password");
if(username!=null && password!=null &&username!="" &&password!="") {
	int state = bookDB.query(username,password);
	if(state==0) {
		out.write("<p>用户名不存在</p>");
	} else if(state==1) {
		out.write("<p>密码错误</p>");
	} else {
		cart.setLogined(1);
		cart.setUsername(username);
		%>
		<jsp:forward page="catalog.jsp" />
		<%
	}
}
%>

<form action="login.jsp" method="post" >
<table>
<tr>
	<td>用户名：</td>
	<td><input type="text" name="username" size="25" /></td>
</tr>
<tr>
	<td>密码：</td>
	<td><input type="password" name="password" size="25" /></td>
</tr>
</table>
<p/>
<input type="submit" value="login">
<input type="reset" name="reset" value="reset">
</form>
<a href="regist.jsp">无账号，点此注册</a>
</body>
</html>