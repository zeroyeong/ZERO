<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

	<article class="tournament">
      <input type="checkbox" name="" id="checkBox" />
      <label for="checkBox">
        <span>Z-CUP Schedule List</span>
        <span>
          <i class="fa-solid fa-chevron-down"></i>
        </span>
      </label>
      <section class="matchNranking">
        <div class="showDetail">
           <button type="button" onclick="showDetail()">상세보기</button>
        </div>
        <div class="match">
          <div class="title">
            <h1>z-cup tournament</h1>
          </div>

          <div class="tournament">
            <h1 class="logo">zero futsal</h1>
            <ul class="round3">
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul> 
              </li>
            </ul>
            <ul class="round2">
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul>
              </li>
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="round1">
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul>
              </li>
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul>
              </li>
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul>
              </li>
              <li>
                <ul>
                  <li></li>
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="teamList">
              <c:forEach var="cupTeamList" items="${cupTeamList}" varStatus="cnt" begin="0" end="7">   
              	<c:set var="groupCnt" value="${groupCnt + 1}" />
              <li>
				<img src="${pageContext.request.contextPath}/resources/images/${cupTeamList.team_emblem}" alt=""/>
                <a href="">${cupTeamList.team_name}</a>
              </li>
              </c:forEach>        
            </ul>
          </div>
        </div>
        <div class="ranking">
          <div class="title">
            <h1>player ranking</h1>
          </div>
          <table>
            <colgroup>
              <col class="col1" />
              <col class="col2" />
              <col class="col3" />
              <col class="col4" />
              <col class="col5" />
              <col class="col6" />
              <col class="col7" />
            </colgroup>
            <thead>
              <tr>
                <th>순위</th>
                <th>이름</th>
                <th>소속팀</th>
                <th>출전</th>
                <th>득점</th>
                <th>경고</th>
                <th>퇴장</th>
              </tr>
            </thead>
            <tbody>
        	  <c:forEach items="${player_rank_list}" var="cupPlayer" begin="0" end="2" step="1"> 
              <c:set var="rankNum" value="${rankNum + 1}" />          
              <tr>
                <td><span class="rank">${rankNum}</span></td>
                <td>
                  <div class="player">
                    <img src="${pageContext.request.contextPath}/resources/images/${cupPlayer.player_photo}" alt="" />
                    <span class="playerName">${cupPlayer.player_name}</span>
                  </div>
                </td>
                <td>${cupPlayer.cup_team.team_name}</td>
                <td>${cupPlayer.player_games}</td>
                <td>${cupPlayer.player_goal}</td>
                <td>${cupPlayer.player_yellow_card}</td>
                <td>${cupPlayer.player_red_card}</td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </section>
    </article>