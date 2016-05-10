<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="common.jsp" %>

<html>
<head><title>Registe</title></head>
<jsp:useBean id="cart" scope="session" class="mypack.ShoppingCart"/>

<body>
<img src="logo.bmp" >
<hr>
<%
	String username = null;
	String password = null;
	username = (String)request.getParameter("username");
	password = (String)request.getParameter("password");
	if(username!=null && password!=null) {
		if(username=="") {   
		%>
			<p>用户名为空</p>
		<%
		}else if(password=="") {
		%>
			<p>密码为空</p>
			<%
		} else if(Register.registe(new User(username,password))){   %>
			<a href="login.jsp">注册成功,点此登录</a>>
			<p/>
			<%
		}
		else {  %>
			<p>用户名已存在 </p>
		 <% 
		}
	}
%>

<form action="regist.jsp" method="post" >
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
<input type="submit" value="regist">
<input type="reset" name="reset" value="reset">
</form>
</body>
</html>