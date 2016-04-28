<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="common.jsp" %>
<jsp:useBean id="cart" scope="session" class="mypack.ShoppingCart"/>

<%
String username = (String)request.getParameter("username");
String password = (String)request.getParameter("password");
if(username!=null && password!=null &&username!="" &&password!="") {
	cart.setLogined(1);
%>
	<jsp:forward page="catalog.jsp" />
<%
}
%>

<html>
<head><title>Login</title></head>
<%@ include file="banner.jsp" %>
<form action="login.jsp" method="post" >
<table>
<tr>
	<td>密码：</td>
	<td><input type="text" name="username" size="25"</td>
</tr>
<tr>
	<td>密码：</td>
	<td><input type="password" name="password" size="25"</td>
</tr>
</table>
<input type="submit" value="login">
<input type="reset" name="reset" value="reset">
</form>
</body>
</html>