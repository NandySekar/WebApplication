<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MOVIE DETAILS</title>
</head>
<body>
<form name="myForm2" method="get">
  <table frame="box" bordercolor="red" cellpadding="5" cellspacing="5">
<tr align="center">
<td colspan="2">
<h1>Movie Details</h1>
</td>
</tr>
<tr><td style="font-weight:bold">Movie Id</td><td style="font-weight:bold">Movie Name</td><td style="font-weight:bold">Movie Price</td></tr>
<c:forEach items="${moviedetails}" var="m">
<tr>
<td><c:out value="${m.id}"/></td> 
 <td><c:out value="${m.movieName}"/></td>
<td><c:out value="${m.moviePrice}"/></td> 
</tr>
</c:forEach>
 <tr>
<td>
<input type="button" onClick="location.href='index.jsp'"value="Clear">
<!-- <input type="submit" onClick="location.href='getMovie.jsp'" value="Get Movie Details"> -->
</td>
</tr> 
</table>  



<%--   <display:table id="MovieDetails" class="displayTableBorder" style="width:65%;" frame="box" cellpadding="5" cellspacing="5" name="moviedetails" requestURI="/getMovie" defaultorder="descending" defaultsort="1">

<display:caption >
<tr >
<td >Movie Details</td></tr>
</display:caption>
    <display:column class="table-row" style="border:1px solid black;"  property="id" title="Movie Id" value="${movie.id}" sortable="true"  />
   
    <display:column class="table-row" style="border:1px solid black;"  property="movieName" title="Movie Name" value="${movie.movieName}" sortable="true" />
    
    <display:column  class="table-row" style="border:1px solid black;" property="moviePrice" title="Movie Price" value="${movie.moviePrice}" sortable="true" sortProperty="moviePrice" />
    
<display:footer>
<tr>
<td>End of Movie Details</td></tr>
</display:footer>
</display:table> --%> 
</form>
</body>
</html> 