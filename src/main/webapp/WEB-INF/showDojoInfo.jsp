<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ${dojo.name}   </title>
<link rel="stylesheet" href="/css/style.css" />
</head>
<body>
	 <div id="dojoProfile_page_container">
            <h1> ${dojo.name} </h1>
            <table>
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>last Name</th>
                        <th>Age</th>
                    </tr>
                </thead>
                <tbody>
                          <c:forEach items = '${ dojo.ninjas }' var = 'ninja'>
                           	<tr>
                                <td>${ninja.firstName}</td>
                                <td>${ninja.lastName}</td>
                                <td>${ninja.age}</td>
								
                       	    </tr>
          						<div> ${ninja.firstName} </div>
          
   						 </c:forEach>
 

                </tbody>
  
          </table>
            <div class="btn"><a href="/" class="link">Home page</a></div>
        </div>
</body>
</html>