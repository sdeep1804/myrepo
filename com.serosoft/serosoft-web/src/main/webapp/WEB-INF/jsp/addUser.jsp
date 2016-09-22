<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User</title>

<style>
table, th, td {
	text-align: left;
}

#squareBody {
	border: 2px solid #000000;
	padding: 20px;
	width: 300px;
	height: 300px;
	margin: auto;
}
</style>
</head>
<body>

	<div id="squareBody">
		<form:form action="userAdd.do" method="POST" modelAttribute="User">

			<table align="center" cellspacing="5">
				<tr>
					<td>First name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="firstName" size="26" /></td>
				</tr>
				<tr>
					<td>Last name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="lastName" size="26" /></td>
				</tr>
				<tr>
					<td>Sex &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:radiobutton path="sex" value="male" />Male &nbsp;
						&nbsp;<form:radiobutton path="sex" value="female" />Female</td>
				</tr>
				<tr>
					<td>Email id &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="eMail" size="26" /></td>
				</tr>
				<tr>
					<td>Phone No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:input path="phoneNo" size="26" /></td>
				</tr>
				<tr>
					<td>Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><form:textarea path="address" cols="20" rows="5" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="Reset">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="welcome.do">Cancel</a></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>