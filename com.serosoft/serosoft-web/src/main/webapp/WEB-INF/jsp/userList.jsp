<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Detail</title>

<style>
table, th, td {
	border: 1px solid black;
	text-align: center;
}

table th {
	background-color: #827b6f
}


img{
height: 12px;
width: 15px;
}

a{
text-decoration: none;
}


</style>

<script type="text/javascript">
	var elems = document.getElementsByClassName('confirmation');
	var confirmIt = function(e) {
		if (!confirm('Are you sure?'))
			e.preventDefault();
	};
	elems.addEventListener('click', confirmIt, false);
</script>
</head>
<body>

	<c:choose>
		<c:when test="${empty userList}">
        Record not found!
    </c:when>
	</c:choose>
	<br>
	<br>

	<a href="user.do">+ Add User</a>
	<br>
	<br>
	
	
	<table border="1" align="center">
		<tr>
			<th>S.N</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Sex</th>
			<th>Phone No</th>
			<th>E-mail</th>
			<th>Address</th>
			<th>Action</th>
		</tr>

		<c:forEach items="${userList}" var="user">
			<tr>
				<td>${user.sn}</td>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.sex}</td>
				<td>${user.phoneNo}</td>
				<td>${user.eMail}</td>
				<td>${user.address}</td>
				<td colspan="2">
				<a href="updateUser/${user.sn}.do"><img alt="update img" src="resources/image/update.png"></a>
				<a href="deleteuser/${user.sn}.do"  onclick="return confirm('Are you sure!')"><img alt="delete img" src="resources/image/delete.jpg"></a>
				</td>								
			</tr>
		</c:forEach>


	</table>
	<%-- <a href="${pageContext.request.contextPath}/updateuser/${user.sn}.do">update</a> --%>
</body>
</html>