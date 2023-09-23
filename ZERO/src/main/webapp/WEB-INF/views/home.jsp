<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  알로항122222222222222222222222 
</h1>

<P>  The time on the server is ${serverTime}. </P>

<table border="1">
  <thead>
    <tr>
      <th>Player Name</th>
      <th>Player Photo</th>
      <th>Player Goal</th>
      <th>Player Yellow Card</th>
      <th>Player Red Card</th>
      <th>Team Name</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${playerList}" var="player">
      <tr>
        <td>${player.player_name}</td>
        <td>${player.player_photo}</td>
        <td>${player.player_goal}</td>
        <td>${player.player_yellow_card}</td>
        <td>${player.player_red_card}</td>
        <td>${player.cup_team.team_name}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>
