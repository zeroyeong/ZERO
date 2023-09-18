const point = document.querySelectorAll("#point");
const reservation = document.querySelectorAll("#reservation");
const zCup = document.querySelectorAll("#zCup");
const customer = document.querySelectorAll("#customer");
const manager = document.querySelectorAll("#manager");

point.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../pointReservation/point.html";
  });
});

reservation.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../pointReservation/reservation.html";
  });
});

zCup.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zCup/zCup.html";
  });
});

customer.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../service/service.html";
  });
});

manager.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../manager/manager.html";
  });
});

