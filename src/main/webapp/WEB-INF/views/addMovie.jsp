<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MOVIE DETAILS</title>
</head>
<body>
<form name="myForm" method="post"action="insert">
<table frame="box" bordercolor="red">
<tr align="center">
<td colspan="2">
<h1>Add Movie Page</h1>
</td>
</tr>
<tr>
<td>Movie Id</td>
<td>
<input type="text" align="right"name="id">
</td>
</tr>
<tr>
<td>Movie Name</td>
<td>

<input type="text" align="right"name="moviename">


</td>
</tr>
<tr>
<td>Movie Price</td>
<td>
<input type="text" align="right"name="movieprice">
</td>
</tr>

<tr>
<td>
<input type="button" onClick="location.href='index.jsp'"value="Clear">
<input type="submit" value="submit">
</td>
</tr>
</table>
</form>

</body>
</html>