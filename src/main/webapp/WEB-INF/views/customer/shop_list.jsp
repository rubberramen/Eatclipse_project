<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/eatclipse/resources/css/main.css">
<link rel="stylesheet" href="/eatclipse/resources/css/fontawesome-all.min.css">
<title>식당 목록</title>

</head>
<body>
<%@ include file="../include/menu_cust.jsp" %>
<h2> <c:if test="${t==2}">한식당</c:if>
      <c:if test="${t==3}">양식당</c:if>
      <c:if test="${t==4}">분식집</c:if>
      <c:if test="${t==5}">중식당</c:if>
      <c:if test="${t==6}">일식당</c:if>
      <c:if test="${t==7}">디저트</c:if>
      <c:if test="${t==8}">패스트푸드</c:if>목록</h2>

<table border="1" width="1000px">
   <tr>
      <th width="200px">가게이름</th>
  	  <th width="200px">위치</th>
   </tr>

		<c:forEach var="row" items="${list}">
			<tr>
				<td><a href="/eatclipse/customer/shopInfo.do?shop_name=${row.name}">${row.name}</a></td>  <!-- 이거 수정해야 -->
				<td>${row.location}</td>
			</tr>
		</c:forEach>
</table>
</body>
</html>












