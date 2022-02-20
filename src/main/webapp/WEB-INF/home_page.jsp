<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!-- c:out ; c:forEach ; c:if -->
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Formatting (like dates) -->
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      <!-- form:form -->
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!-- for rendering errors on PUT routes -->
        <%@ page isErrorPage="true" %>

          <!DOCTYPE html>
          <html>

          <head>
            <meta charset="UTF-8">
            <title>dojo</title>
            <link rel="stylesheet" href="css/style.css" />
          </head>

          <body>
            <div id="dojo_page_main_container">
              <div class="dojo_page_leftCol">
                <h2>Add a <span style="display: block;"> New Dojo</span></h2>

                <form:form action="/dojo/add" method="post" modelAttribute="dojo" placeholder="Add dojo" style="text-align: center;">
						
		        <form:label path="name">Name:</form:label>
                  <form:errors path="name" />
                  <form:input path="name" />
                  <div></div>
                  <input type="submit" value="Submit" class="btn" />
                </form:form>

              </div>
              <div class="dojo_page_RightCol">
                <h1 class="h1">All Dojos</h1>
                <div class="dojo_page_all_dojos_box">
                            <c:forEach items = '${ showAllDojosDojo }' var = 'dojo'>

          						<div> <a href="/dojo/show/${dojo.id}">${dojo.name}</a> </div>
          
       						 </c:forEach>
                </div>

                <div class="btn"><a href="ninja" class="link">add ninja</a></div>
              </div>


            </div>
          </body>

          </html>