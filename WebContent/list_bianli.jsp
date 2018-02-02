<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.zc.javaweb.Customer,com.zc.javaweb.Dog,java.util.List,java.util.ArrayList" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

<%
	List<Object> customerList=new ArrayList<Object>();
	Customer c1=new Customer(1212,"hehe");
	Customer c2=new Customer(12222,"haehe");
	Customer c3=new Customer(3333,"hedhe");
	Customer c4=new Customer(4444,"hehdfe");
	customerList.add(c1);
	customerList.add(c2);
	customerList.add(c3);
	customerList.add(c4);
	
	Dog d1=new Dog("kitty","hehe");
	customerList.add(d1);
	
	session.setAttribute("customerList",customerList);
%>


	<c:forEach items="${sessionScope.customerList}" var="listin">
		${listin.cno}<br/>
	</c:forEach>
	
	<c:forEach items="${sessionScope.customerList}" var="listin" varStatus="s">
		listin[${s.index}]
	</c:forEach>
	
	
	<c:forEach items="${sessionScope.customerList}" var="listin" varStatus="id">
		${id.index}--${id.count}--${listin.cno}<br/>
	</c:forEach>

</body>
</html>