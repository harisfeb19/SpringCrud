<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/main.css' />" rel="stylesheet"></link>
		
</head>
<body>
<h1 align="center">Students List</h1>
<table id="t02"  cellpadding="2">
<tr>
<th>
<a  href="/SpringCRUD/enroll"><h2>Home Page:Enroll New Student</h2></a>

</th>

<th>

<a  align ="right" href="/delete"><h2>Delete All Students</h2></a>
</th>
</tr>
</table>
<table >
<tr>


  <th>Page No : 
<c:forEach var="count" items="${pageCount}"  varStatus="theCount"> 
<a align="right" href="/SpringCRUD/viewstudents/${theCount.count}">${theCount.count}</a>   
</c:forEach>  
</th>

</tr>

</table>
   
<form:form  class="form-horizontal" >
<table id="t01" border="2" width="70%" cellpadding="2">
<tr><th>Id</th><th>First Name</th><th>Last Name</th>
<th>Sex</th><th>Date Of Birth</th>
<th>Email</th><th>Section</th><th>Country</th>
<th>First Attempt</th><th>Subjects</th>
<th>Edit</th><th>Delete</th></tr>  

   <c:forEach var="student" items="${list}"> 
   <tr>  
   <td>${student.id}</td>  
   <td>${student.FirstName}</td> 
   <td>${student.LastName}</td>  
   <td>${student.sex}</td> 
   <td>${student.dob}</td>  
   <td>${student.email}</td> 
   <td>${student.section}</td>  
   <td>${student.country}</td>  
   <td>${student.firstAttempt}</td>  
   <td>${student.subjects}</td>  
   <td><a href="/SpringCRUD/editstudent/${student.id}">Edit</a></td>  
   <td><a href="/SpringCRUD/deletestudent/${student.id}">Delete</a></td>  
   </tr>  
   </c:forEach> 
   
   
   </table>  
   <br/>
   
  
   </form:form>
</body>
</html>