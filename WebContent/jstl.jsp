<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.zc.javaweb.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

	<%
		request.setAttribute("book", "<<javabook>>");
	%>
	书:${requestScope.book}
	书 :	<c:out value="${requestScope.book}"></c:out>
	
	<c:set var="name" value="zc" scope="page"></c:set>
	<%-- pageContext.setAttribute("name","zc"); --%>
	
	${pageScope.name}
	
	<!-- value使用el表达式 -->
	<c:set var="subject" value="${param.subject}" scope="session"></c:set>
	subject: ${sessionScope.subject }
	
	<br/>
	<!-- c:if没有else.但是可以把属性存储起来 -->
	<c:set var="age" value="2" scope="request"></c:set>
	<c:if test="${requestScope.age>18}">成年</c:if>
	
	<!-- c:choose -->
	<c:choose>
		<c:when test="${param.age<18}">未成年</c:when>
		<c:when test="${param.age<30}">青年</c:when>
		<c:when test="${param.age<50 }">中年</c:when>
		<c:when test="${param.age<80 }">老年</c:when>
		<c:otherwise>活神仙</c:otherwise>
	</c:choose>
	
	<br/><br/>
	
	<!-- forEach -->
	<c:forEach begin="1" end="10" step="2" var="i">
	${i}&nbsp
	</c:forEach>
	
	<%
		List<Customer> customers=new ArrayList<Customer>();
		customers.add(new Customer(1,"zc"));
		customers.add(new Customer(1,"zz"));
		customers.add(new Customer(2,"zx"));
		request.setAttribute("customers",customers);
	%>
	
	<c:forEach items="${requestScope.customers}" var="hehe">
		${hehe.cno}: ${hehe.cname}<br/>
	</c:forEach>
	
	
	<%
		Map<String,Object> customersMap=new HashMap<String,Object>();
		customersMap.put("a",new Customer(1,"zz"));
		customersMap.put("b",new Customer(1,"zz"));
		customersMap.put("c",new Customer(1,"zz"));
		customersMap.put("d",new Customer(1,"zz"));
		customersMap.put("e",new Customer(1,"zz"));
		request.setAttribute("customersMap",customersMap);
		
	%>
	
	<c:forEach var="custsMap" items="${requestScope.customersMap}">
		${custsMap.key}--${custsMap.value.cno}--${custsMap.value.cname}<br/>
	</c:forEach>
	
	
	<%
	//遍历数组
	String[] days=new String[]{"a","b","c"};
	request.setAttribute("days",days);
	%>
	<c:forEach var="da" items="${ requestScope.days}">${da}</c:forEach>
	
	<c:url value="http://www.baidu.com" var="testurl" scope="page">
		<c:param name="name" value="zc"></c:param>>
	</c:url>
	点击链接${testurl}
	
</body>
</html>