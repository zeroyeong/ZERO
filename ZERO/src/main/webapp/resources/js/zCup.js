const btn = document.querySelectorAll("#selectMenuBtn");

btn.forEach((t) => {
  t.addEventListener("click", (e) => {
    const target = e.currentTarget;

    btn.forEach((t) => t.classList.remove("active"));
    target.classList.add("active");
  });
});

// PAGE TITLE CHANGE
const zCupTitle = document.getElementById("zCupTitle");
const playBtn = document.querySelector("label#zCupInfo");
const addBtn = document.querySelector("label#teamAdd");
const listbtn = document.querySelector("label#teamList");

playBtn.addEventListener("click", function () {
  zCupTitle.innerText = "Z-CUP 소개";
});

addBtn.addEventListener("click", function () {
  zCupTitle.innerText = "팀/선수 등록";
});

listbtn.addEventListener("click", function () {
  zCupTitle.innerText = "팀리스트";
});

// TEAM LIST pagination
const showTr = 30;
const totalTr = document.querySelectorAll("tbody tr").length;
const totalPage = Math.ceil(totalTr / showTr);
const pages = document.querySelector(".pagination");

// pagination button 생성
for (let i = 1; i <= totalPage; i++) {
  pages.innerHTML += `<li>${i}</li>`;
}

const page = document.querySelectorAll(".pagination li");

page.forEach((t, idx) => {
  t.addEventListener("click", () => {
    for (p of page) {
      p.classList.remove("active");
    }
    displayTr(idx);
  });
});

function displayTr(idx) {
  const trArray = document.querySelectorAll("tbody tr");

  let start = idx * showTr;
  let end = start + showTr;

  let trArray1 = [...trArray];
  for (ta1 of trArray1) {
    ta1.style.display = "none";
  }

  let showTrArray = trArray1.slice(start, end);
  for (st of showTrArray) {
    st.style.display = "";
  }

  page[idx].classList.add("active");
}

displayTr(0);
