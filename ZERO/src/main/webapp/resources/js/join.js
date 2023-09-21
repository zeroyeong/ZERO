// 한번에 모든 약관 클릭하기
function selectAll(selectAll) {
  const chekboxes = document.getElementsByName("turm");

  chekboxes.forEach((t) => {
    t.checked = selectAll.checked;
  });
}

// 동의 버튼 클릭했을 때 약관alert + 다음페이지 넘어가도록
function frmSubmit(){
	const acep1 = document.getElementById("homepage");
  const acep2 = document.getElementById("userInfo");
  const acep3 = document.getElementById("userInfotrust");

  if (acep1.checked != true) {
    alert("홈페이지 이용약관에 동의해주세요.");
    return false;
  }

  if (acep2.checked != true) {
    alert("개인정보 수집 및 이용에 대한 약관에 동의해주세요.");
    return false;
  }

  if (acep3.checked != true) {
    alert("개인정보 취급위탁 안내에 대한 약관에 동의해주세요.");
    return false;
  }

  self.location.href = "/zero/join_form";
}