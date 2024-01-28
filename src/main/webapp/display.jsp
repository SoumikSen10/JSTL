<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
   ${label}  <br/> <!-- for fetched data from servlet -->
   <c:out value="${label}" /> 
   <c:import url="http://www.telusko.com/online.htm"></c:import>
  
  <!--  
   <c:set></c:set>
   <c:remove></c:remove>  -->
   
  <!-- ${student.name} <!-- will not work. We need beans to get this data where we implement the getters and setters -->
   
   <c:forEach items="${students}" var="s">
   ${s.name} <br/>
   </c:forEach>
   
   <!-- jdbc using jstl -->
 <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/mario" user="root" password="mypassword" />  
 
 <sql:query var="rs" dataSource="${db}">select * from gadgets</sql:query>
 
 <c:forEach items="${rs.rows}" var="gadget">
 <br/>
    <c:out value="${gadget.gid}" ></c:out> : <c:out value="${gadget.gname}"></c:out> : <c:out value="${ gadget.price}"></c:out>
 </c:forEach>
   
</body>
</html>