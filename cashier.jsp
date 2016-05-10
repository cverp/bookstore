<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="common.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="mypack.*" %>
<html>
<head><title>TitleCashier</title></head>
<%@ include file="banner.jsp" %>

<%
	if(cart.getLogined()==0) {
		%>
		<jsp:forward page="login.jsp" />
		<%
	}
%>

<p>您一共购买了<%=cart.getNumberOfItems() %>本书</P>
<p>您应支付的金额为<%=cart.getTotal() %>元</p>

<form action="<%=request.getContextPath()%>/receipt.jsp" method="post">
<table>
<tr>
<td><strong>信用卡用户名</strong></td>
<td><input type="text" name="cardname" value="guest" size="19"></td>
</tr>
<tr>
<td><strong>信用卡账号</strong></td>
<td><input type="text" name="cardnum" value="xxxx xxxx xxxx xxxx" size="19"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="递交"></td>
</tr>
</table>
</form>
</body>
</html>
