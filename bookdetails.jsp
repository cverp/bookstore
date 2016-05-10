<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="common.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="mypack.*" %>

<html>
<head><title>TitleBookDescription</title></head>
<%@ include file="banner.jsp" %>
<br>
<%
    //Get the identifier of the book to display
    String bookId = request.getParameter("bookId");
    if(bookId==null)bookId="201";
    BookDetails book = bookDB.getBookDetails(bookId);
%>

<% 
   if(book==null)
   { 
%>
    <p>书号"<%=bookId%>"在数据库中不存在<p>
    <strong><a href="<%=request.getContextPath()%>/catalog.jsp">继续购物</a></strong>
<% 
     return;
   }
%>

<p>书名：<%=convert(book.getTitle())%></p>
作者: <em><%=convert(book.getName())%> </em>&nbsp;&nbsp;
(<%=book.getYear()%>)<br>
<p>价格（元）：<%=book.getPrice()%></p>
<p>销售数量：<%=book.getSaleAmount()%></p>
<p>简介：<%=convert(book.getDescription())%></p>


<p><strong><a href="<%=request.getContextPath()%>/catalog.jsp?Add=<%=bookId%>">加入购物车</a>&nbsp; &nbsp; &nbsp;
<a href="<%=request.getContextPath()%>/catalog.jsp">继续购物</a></p></strong>
</body>
</html>