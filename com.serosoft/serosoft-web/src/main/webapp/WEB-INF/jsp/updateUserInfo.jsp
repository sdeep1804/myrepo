<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update User</title>

<style>
table, th, td {
	text-align: left;
}

table th {
	background-color: #827b6f
}

img {
	height: 12px;
	width: 15px;
}

#squareBody {
	border: 2px solid #000000;
	padding: 20px;
	width: 300px;
	height: 300px;
	margin: auto;
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

		<c:forEach items="${userlist}" var="user">
			<tr>
				<td>${user.sn}</td>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.sex}</td>
				<td>${user.phoneNo}</td>
				<td>${user.eMail}</td>
				<td>${user.address}</td>
				<td colspan="2">
				<a href="updateUser/${user.sn}.do"><img alt="update img" src="../resources/image/update.png"></a>
				<a href="deleteuser/${user.sn}.do"  onclick="return confirm('Are you sure!')"><img alt="delete img" src="../resources/image/delete.jpg"></a>
				</td>
			</tr>
		</c:forEach>


	</table>
	<br>
	<br>
	<br>
	<br>

	<div id="squareBody">
		<form:form action="../updateRecords.do" method="POST"
			modelAttribute="user">

			<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
			<form:hidden path="sn" />


			<table align="center" cellspacing="5">

				<tr>
					<td>First name &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="firstName" size="26" /></td>
				</tr>
				<tr>
					<td>Last name &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="lastName" size="26" /></td>
				</tr>
				<tr>
					<td>Sex &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:radiobutton path="sex" value="male" />Male <form:radiobutton
							path="sex" value="female" />Female</td>
				</tr>
				<tr>
					<td>Email id &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="eMail" size="26" /></td>
				</tr>
				<tr>
					<td>Phone No &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="phoneNo" size="26" /></td>
				</tr>
				<tr>
					<td>Address &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:textarea path="address" cols="20" rows="5" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="Reset"> &nbsp;&nbsp;&nbsp;</td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>