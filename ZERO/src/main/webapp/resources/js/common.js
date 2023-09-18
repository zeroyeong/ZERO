const point = document.querySelectorAll("#point");
const reservation = document.querySelectorAll("#reservation");
const zCup = document.querySelectorAll("#zCup");
const customer = document.querySelectorAll("#customer");
const manager = document.querySelectorAll("#manager");

point.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../pointReservation/point.jsp";
  });
});

reservation.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../pointReservation/reservation.jsp";
  });
});

zCup.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../zCup/zCup.jsp";
  });
});

customer.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../service/service.jsp";
  });
});

manager.forEach((t) => {
  t.addEventListener("click", function () {
    location.href = "../manager/manager.jsp";
  });
});

