<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MOVIE DETAILS</title>
</head>
<body>
<form name="myForm4" method="post"action="updateMovieFinal">
 <table frame="box" bordercolor="red">
<tr align="center">
<td colspan="2">
<h1>Update Movie Page</h1>
</td>
</tr>
 <tr>
<td>Movie Id</td> 
 <td>
<input type="text" align="right" name="id" value="${movie1.id}">
</td> 
</tr>
<tr>
<td>Movie Name</td>
<td>
<input type="text" align="right" name="moviename" value="${movie1.movieName}">
</td>
</tr>

<tr>
<td>Movie Price</td>
<td>
<input type="text" align="right" name="movieprice" value="${movie1.moviePrice}"> 
</td>
</tr>
<%-- 
  <tr><td style="font-weight:bold">Movie Id</td><td style="font-weight:bold">Movie Name</td><td style="font-weight:bold">Movie Price</td><td style="font-weight:bold">Release date</td></tr>
<c:forEach items="${movie1}" var="m">
<tr>
<td><c:out value="${m.id}"/></td>
<td><c:out value="${m.movieName}"/></td>
<td><c:out value="${m.moviePrice}"/></td>
<td><c:out value="${m.releaseDate}"/></td> 
</tr>
</c:forEach> --%>
<tr>
<td>
<input type="button" onClick="location.href='index.jsp'"value="Clear">
<input type="submit" value="submit">
</td>
</tr>
</table>  

<%-- <display:table class="displayTableBorder" style="width:95%;" id="MovieDetails" name="movie1" requestURI="/updateMovieFinal"  >

    <display:column class="table-row" style="border:1px solid black;" property="id" title="Movie Id" value="${movie.id}" sortable="true" />
   
    <display:column style="border:1px solid black;" property="movieName" title="Movie Name" value="${movie.movieName}" sortable="true"/>
    
    <display:column style="border:1px solid black;" property="moviePrice" title="Movie Price" value="${movie.moviePrice}" sortable="true"/>
    
    <display:column  style="border:1px solid black;" property="releaseDate" title="Release date" value="${movie.ReleaseDate}" sortable="true"/>
   
  
</display:table>
 <tr>
<td>
<input type="button" onClick="location.href='index.jsp'"value="Clear">
<input type="submit" value="submit">
</td>
</tr>
</table> --%>
</form>

</body>
</html>