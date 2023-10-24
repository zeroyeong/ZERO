## ⚽ ZEROFUTSAL 🏃‍♂️
- 클론사이트: HM FUTSAL PARK(https://www.hmfutsalpark.com/)
- 풋살장 예약 및 리그접수를 할 수 있는 사이트인 HM FUTSAL PARK를 클론코딩했습니다.
- 기존 사이트에서 일부 페이지를 구현했습니다.
- 구현페이지: 기존 - 지점, 대관, H-CUP, 고객센터, 로그인, 회원가입, 마이페이지 / 추가 - 관리자페이지

## 📆 개발기간
2023.09.01 ~ 2023.10.27

## 👨‍👩‍👧 멤버구성
- 김대영: 화면 구성 담당, 관리자페이지 담당, 예약 승인 및 취소, 팀 관리(팀 수정 및 삭제, 팀원 수정 및 퇴출), 경기일정(추가 및 수정, 삭제), 사용자관리(사용자 계정정보 수정)
- 박재영: zCup 리그 담당, 팀 등록과 팀 관리, 팀 리스트, 선수 등록, 선수 목록, 경기 일정, 경기 내용
- 이대건: 공지사항, FAQ 담당, 글작성 및 수정, 삭제기능, 이전글 / 다음글 조회 기능
- 장원: 예약 시스템 담당, 예약 결제, 예약 조회, 예약 취소, 고객센터 일부분 담당, 게시글 수정, 삭제, 조회수증가, 제목으로 게시글검색, 이전글 다음글 확인
- 최윤지: 화면 구성 담당, 회원가입 및 로그인 페이지 담당, 소셜로그인 담당, 이메일 인증

## 🛠 개발환경
- <img src="https://img.shields.io/badge/windows 10-0078D6?style=flat&logo=Windows Chrome&logoColor=white"/>
- <img src="https://img.shields.io/badge/Google Chrome-4285F4?style=flat&logo=Google Chrome&logoColor=white"/>
- <img src="https://img.shields.io/badge/java11-222324?style=flat&logoColor=white"/>
- server: <img src="https://img.shields.io/badge/apache tomcat-9.0-2C2255?style=flat&logo=Apache Tomcat&logoColor=white"/>
- Framework: <img src="https://img.shields.io/badge/Spring Framework-green?style=flat&logo=Spring Framework&logoColor=white"/>
- Database: <img src="https://img.shields.io/badge/MySQL 8.0.33-4479A1?style=flat&logo=MySQL&logoColor=white"/> <img src="https://img.shields.io/badge/HeidiSQL-1B72BE?style=flat&logoColor=white"/>
- 협업툴: <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white"/>

## ❗주요기능
### 🙍‍♂️사용자
- 회원가입: 회원 아이디(이메일) 중복확인, 회원가입 후 로그인페이지로 이동
- 로그인: 회원 로그인, 아이디(이메일)와 같은 SNS계정(구글, 네이버, 카카오)으로 로그인, 로그인 후 메인페이지로 이동
- 마이페이지: 회원의 개인정보 확인 및 수정, 회원탈퇴 기능
- 예약: 지점 별 예약가능일정 확인 및 결제
- 예약 확인: 결제시 입력한 이름과 비밀번호를 통한 예약확인
- 고객센터: 공지사항 및 FAQ 확인, 글 제목으로 검색, 이전글 및 다음글 이동
- Z-CUP - 소개/전체현황: Z-CUP 소개 및 경기 전체현황, 경기 참여 팀정보 확인
- Z-CUP - 팀/선수등록: 팀 및 선수등록
- Z-CUP - 팀리스트: 경기 참여 팀 리스트 확인 및 팀관리 이동
- 팀관리: 비밀번호를 통해 팀관리 페이지로 이동
- 팀관리(수정): 팀 정보 및 선수 변경


### 👨‍🔧관리자
- 고객센터: 공지사항 및 FAQ 글 작성 및 수정
-  관리자 - 예약승인: 예약내역 조회 및 정보확인, 예약 취소
-  관리자 - 팀관리: 전체 팀 정보 조회 및 수정, 팀별 스코어 입력 및 팀원 퇴출기능
-  관리자 - 경기일정: Z-CUP 경기일정 정보 등록(스코어, 날짜 등), 일정별 경기 스코어 입력 및 수정, 일정삭제
-  관리자 - 사용자관리: 사이트 사용자 정보 조회 및 정보 수정
