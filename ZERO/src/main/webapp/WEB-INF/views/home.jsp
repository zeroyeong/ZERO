<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  알로항122222222222222222222222 
</h1>

<P>  The time on the server is ${serverTime}. </P>


<form:form id="playerForm" modelAttribute = "NewSchedule" method="post" action="home2" enctype="multipart/form-data">
	<table border="1">
   <thead>
    <tr>
      <th>home team</th>
      <th>away team</th>
      <th>location</th>
      <th>data</th>
      <th>time</th>
      <th>home goal</th>
      <th>away goal</th>
      <th>branch_no</th>
      <th>detail_no</th> 
    </tr>
  </thead> 
    <tbody>
      <tr>
        <td><form:input type="text" path="team_home_no"/></td>
        <td><form:input type="text" path="team_away_no"/></td>
        <td><form:input type="text" path="schedule_location"/></td>       
        <td><form:input type="text" path="schedule_date"/></td>       
        <td><form:input type="text" path="schedule_time"/></td>       
        <td><form:input type="text" path="schedule_home_goal"/></td> 
        <td><form:input type="text" path="schedule_away_goal"/></td>  
        <td><form:input type="text" path="branch_no"/></td> 
        <td><form:input type="text" path="detail_no"/></td>                                      
      </tr>
  </tbody>
 </table>
  <button type="submit">버튼</button>
</form:form>


<table border="1">
  <thead>
    <tr>
      <th>home team</th>
      <th>away team</th>
      <th>location</th>
      <th>data</th>
      <th>time</th>
      <th>home goal</th>
      <th>away goal</th>
      <th>branch_no</th>
      <th>detail_no</th> 
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${cup_schedule_list}" var="schedule">
      <tr>
        <td>${schedule.cup_home_team.team_name}</td>
        <td>${schedule.cup_away_team.team_name}</td>
        <td>${schedule.schedule_location}</td>        
        <td>${schedule.schedule_date}</td>        
        <td>${schedule.schedule_time}</td>        
        <td>${schedule.schedule_home_goal}</td>        
        <td>${schedule.schedule_away_goal}</td>        
        <td>${schedule.branch_no}</td>   
        <td>${schedule.detail.detail_no}</td>                    
      </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>
