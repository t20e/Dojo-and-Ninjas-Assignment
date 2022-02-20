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
<title>add ninja</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	  <div id="ninja_add_page_container">
            <div class="new_ninja_box">
                <h1>New Ninja</h1>
                <form:form action="/ninja/add" method="post" modelAttribute="ninja">
                    <div>
                        <form:label path="firstName">First Name:</form:label>
                        <form:errors path="firstName"/>
                        <form:input path="firstName"/>
                    </div>
                    <div>
                        <form:label path="lastName">Last Name:</form:label>
                         <form:errors path="lastName"/>
                        <form:input path="lastName"/>
                    </div>
                    <div>
                        <form:label path="age">Age:</form:label>
						  <form:errors path="age"/>
                        <form:input type="number" path="age"/>
                    </div>
                    <div>
						  <form:select  path="dojo">
						    <form:option value="null"> Select Dojo</form:option>
					<!-- repeat to show all dojos -->
	                            <c:forEach items = '${ showAllDojosDojo }' var = 'dojos'>
										<form:option value=" ${dojos.id} " label=" ${dojos.name} "/>  
          
   								 </c:forEach>
								
								
						 	 </form:select>
                    </div>
                 
                    <input type="submit" value="Submit" class="btn"/>
                </form:form>    


                <div class="btn"><a href="/" class="link">Home page</a></div>
            </div>
        </div>
</body>
</html>